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

module Kubernetes

  class KubeConfig

    KUBE_CONFIG_DEFAULT_LOCATION = File.expand_path('~/.kube/config')

    class << self

      def list_context_names(config_file=KUBE_CONFIG_DEFAULT_LOCATION)
        config = self.new(config_file)
        return config.list_context_names
      end

    end

    @@temp_files = {}
    attr_accessor :path
    attr_writer :config

    def initialize(path, config_hash=nil)
      @path = path
      @config = config_hash
    end

    def base_path
      File.dirname(self.path)
    end

    def config
      @config ||= open(self.path) do |io|
        ::YAML.load(io.read)
      end
    end

    def configure(configuration, context_name=nil)
      context = context_name ? self.find_context(context_name) : self.current_context
      user = context['user'] || {}
      cluster = context['cluster'] || {}

      configuration.tap do |c|
        if user['authorization']
          c.api_key['authorization'] = user['authorization']
        end
        if server = cluster['server']
          server = URI.parse(server)
          c.scheme = server.scheme
          host = "#{server.host}:#{server.port}"
          host = "#{server.userinfo}@#{host}" if server.userinfo
          c.host = host
          c.base_path = server.path

          if server.scheme == 'https'
            c.verify_ssl = cluster['verify-ssl']
            c.verify_ssl_host = cluster['verify-ssl']
            c.ssl_ca_cert = cluster['certificate-authority']
            c.cert_file = user['client-certificate']
            c.key_file = user['client-key']
          end
        end
      end
    end

    def find_cluster(name)
      self.find_by_name(self.config['clusters'], 'cluster', name).tap do |cluster|
        create_temp_file_and_set(cluster, 'certificate-authority')
        cluster['verify_ssl'] = !cluster['insecure-skip-tls-verify']
      end
    end

    def find_user(name)
      self.find_by_name(self.config['users'], 'user', name).tap do |user|
        create_temp_file_and_set(user, 'client-certificate')
        create_temp_file_and_set(user, 'client-key')
        # If tokenFile is specified, then set token
        if !user['token'] && user['tokenFile']
          open(user['tokenFile']) do |io|
            user['token'] = io.read.chomp
          end
        end
        # Convert token field to http header
        if user['token']
          user['authorization'] = "Bearer #{user['token']}"
        elsif user['username'] && user['password']
          user_pass = "#{user['username']}:#{user['password']}"
          user['authorization'] = "Basic #{Base64.strict_encode64(user_pass)}"
        end
      end
    end

    def list_context_names
      self.config['contexts'].map { |e| e['name'] }
    end

    def find_context(name)
      self.find_by_name(self.config['contexts'], 'context', name).tap do |context|
        context['cluster'] = find_cluster(context['cluster']) if context['cluster']
        context['user'] = find_user(context['user']) if context['user']
      end
    end

    def current_context
      find_context(self.config['current-context'])
    end

    protected
    def find_by_name(list, key, name)
      obj = list.find {|item| item['name'] == name }
      raise ConfigError.new("#{key}: #{name} not found") unless obj
      obj[key].dup
    end

    def create_temp_file_and_set(obj, key)
      if !obj[key] && obj["#{key}-data"]
        obj[key] = create_temp_file_with_base64content(obj["#{key}-data"])
      end
    end

    def create_temp_file_with_base64content(content)
      @@temp_files[content] ||= Tempfile.open('kube') do |temp|
        temp.write(Base64.strict_decode64(content))
        temp.path
      end
    end
  end
end
