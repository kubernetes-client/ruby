# Copyright 2017 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'base64'
require 'yaml'
require 'tempfile'
require 'uri'

require 'kubernetes/api_client'
require 'kubernetes/configuration'
require 'kubernetes/config/error'
require 'kubernetes/utils'

module Kubernetes
  # rubocop:disable ClassLength
  # The KubeConfig class represents configuration based on a YAML
  # representation.
  class KubeConfig
    KUBE_CONFIG_DEFAULT_LOCATION = File.expand_path('~/.kube/config')
    AUTH_KEY = 'authorization'.freeze

    class << self
      def list_context_names(config_file = KUBE_CONFIG_DEFAULT_LOCATION)
        config = new(config_file)
        config.list_context_names
      end
    end

    attr_accessor :path
    attr_writer :config

    def initialize(path = nil, config_hash = nil)
      @path = path
      @config = config_hash
    end

    def base_path
      File.dirname(path)
    end

    def config
      @config ||= File.open(path) do |io|
        ::YAML.safe_load(io.read)
      end
    end

    def configure(configuration, context_name = nil)
      context = context_name ? find_context(context_name) : current_context
      return unless context

      user = context['user'] || {}
      cluster = context['cluster'] || {}

      configuration.tap do |c|
        c.api_key[AUTH_KEY] = user[AUTH_KEY] if user[AUTH_KEY]

        init_server(cluster, user, c)
      end
    end

    def init_server(cluster, user, config)
      return unless (server = cluster['server'])

      server = URI.parse(server)
      config.scheme = server.scheme
      host = "#{server.host}:#{server.port}"
      host = "#{server.userinfo}@#{host}" if server.userinfo
      config.host = host
      config.base_path = server.path

      return unless server.scheme == 'https'

      setup_ssl(cluster, user, config)
    end

    def setup_ssl(cluster, user, config)
      # rubocop:disable DoubleNegation
      config.verify_ssl = !!cluster['verify-ssl']
      config.verify_ssl_host = !!cluster['verify-ssl']
      # rubocop:enable DoubleNegation

      config.ssl_ca_cert = cluster['certificate-authority']
      config.cert_file = user['client-certificate']
      config.key_file = user['client-key']
    end

    def find_cluster(name)
      find_by_name(config['clusters'], 'cluster', name).tap do |cluster|
        Kubernetes.create_temp_file_and_set(cluster, 'certificate-authority')
        cluster['verify_ssl'] = !cluster['insecure-skip-tls-verify']
      end
    end

    def find_user(name)
      find_by_name(config['users'], 'user', name).tap do |user|
        next unless user

        Kubernetes.create_temp_file_and_set(user, 'client-certificate')
        Kubernetes.create_temp_file_and_set(user, 'client-key')
        load_token_file(user)
        setup_auth(user)
      end
    end

    def load_token_file(user)
      # If tokenFile is specified, then set token
      return unless !user['token'] && user['tokenFile']

      File.open(user['tokenFile']) do |io|
        user['token'] = io.read.chomp
      end
    end

    # rubocop:disable AbcSize
    def setup_auth(user)
      # Convert token field to http header
      if user['token']
        user['authorization'] = "Bearer #{user['token']}"
      elsif user['username'] && user['password']
        user_pass = "#{user['username']}:#{user['password']}"
        user['authorization'] = "Basic #{Base64.strict_encode64(user_pass)}"
      elsif user['auth-provider'] && user['auth-provider']['name'] == 'azure'
        token = user['auth-provider']['config']['access-token']
        user['authorization'] = "Bearer #{token}"
      end
    end
    # rubocop:enable AbcSize

    def list_context_names
      config['contexts'].map { |e| e['name'] }
    end

    def find_context(name)
      find_by_name(config['contexts'], 'context', name).tap do |context|
        if context['cluster']
          context['cluster'] = find_cluster(context['cluster'])
        end
        if context['user'] && !context['user'].empty?
          context['user'] = find_user(context['user'])
        end
      end
    end

    def current_context
      return unless config

      find_context(config['current-context'])
    end

    protected

    def find_by_name(list, key, name)
      obj = list.find { |item| item['name'] == name }
      raise ConfigError, "#{key}: #{name} not found" unless obj

      obj[key].dup if obj[key]
    end
  end
  # rubocop:enable ClassLength
end
