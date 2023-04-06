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
#

require 'kubernetes/configuration'
require 'kubernetes/config/error'

module Kubernetes
  # The InClusterConfig class represents configuration for authn/authz in a
  # Kubernetes cluster.
  class InClusterConfig
    # rubocop:disable Metrics/LineLength
    SERVICE_HOST_ENV_NAME = 'KUBERNETES_SERVICE_HOST'.freeze
    SERVICE_PORT_ENV_NAME = 'KUBERNETES_SERVICE_PORT'.freeze
    SERVICE_TOKEN_FILENAME = '/var/run/secrets/kubernetes.io/serviceaccount/token'.freeze
    SERVICE_CA_CERT_FILENAME = '/var/run/secrets/kubernetes.io/serviceaccount/ca.crt'.freeze
    TOKEN_REFRESH_PERIOD = 60 # 1 minute
    # rubocop:enable Metrics/LineLength

    attr_accessor :host
    attr_accessor :port
    attr_accessor :token
    attr_accessor :token_expires_at

    def validate
      unless (self.host = env[SERVICE_HOST_ENV_NAME]) &&
             (self.port = env[SERVICE_PORT_ENV_NAME])
        raise ConfigError, 'Service host/port is not set'
      end

      # rubocop:disable Metrics/LineLength
      raise ConfigError, 'Service token file does not exists' unless File.file?(token_file)
      raise ConfigError, 'Service token file does not exists' unless File.file?(ca_cert)
      # rubocop:enable Metrics/LineLength
    end

    def self.in_cluster?
      File.exist?(SERVICE_TOKEN_FILENAME) &&
        File.exist?(SERVICE_CA_CERT_FILENAME)
    end

    def env
      @env ||= ENV
      @env
    end

    def ca_cert
      @ca_cert ||= SERVICE_CA_CERT_FILENAME
      @ca_cert
    end

    def token_file
      @token_file ||= SERVICE_TOKEN_FILENAME
      @token_file
    end

    def token_refresh_period
      @token_refresh_period ||= TOKEN_REFRESH_PERIOD
      @token_refresh_period
    end

    def load_token
      File.open(token_file) do |io|
        self.token = io.read.chomp
        self.token_expires_at = Time.now + token_refresh_period
      end
    end

    # rubocop:disable Metrics/AbcSize
    def configure(configuration, try_refresh_token: false)
      validate
      load_token
      configuration.api_key['authorization'] = "Bearer #{token}"
      configuration.scheme = 'https'
      configuration.host = "#{host}:#{port}"
      configuration.ssl_ca_cert = ca_cert
      return unless try_refresh_token

      Configuration.instance_variable_set(:@in_cluster_config, self)
      Configuration.prepend(Module.new do
        # rubocop:disable Metrics/LineLength
        def api_key_with_prefix(identifier)
          in_cluster_config = self.class.instance_variable_get(:@in_cluster_config)
          if identifier == 'authorization' && @api_key.key?(identifier) && in_cluster_config.token_expires_at <= Time.now
            in_cluster_config.load_token
            @api_key[identifier] = 'Bearer ' + in_cluster_config.token
          end
          super identifier
        end
        # rubocop:enable Metrics/LineLength
      end)
    end
    # rubocop:enable Metrics/AbcSize
  end
end
