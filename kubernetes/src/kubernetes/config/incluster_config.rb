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

require 'kubernetes/configuration'
require 'kubernetes/config/error'

module Kubernetes
  # The InClusterConfig class represents configuration for authn/authz in a
  # Kubernetes cluster.
  class InClusterConfig
    # rubocop:disable LineLength
    SERVICE_HOST_ENV_NAME = 'KUBERNETES_SERVICE_HOST'.freeze
    SERVICE_PORT_ENV_NAME = 'KUBERNETES_SERVICE_PORT'.freeze
    SERVICE_TOKEN_FILENAME = '/var/run/secrets/kubernetes.io/serviceaccount/token'.freeze
    SERVICE_CA_CERT_FILENAME = '/var/run/secrets/kubernetes.io/serviceaccount/ca.crt'.freeze
    # rubocop:enable LineLength

    attr_accessor :host
    attr_accessor :port
    attr_accessor :token

    def validate
      unless (self.host = env[SERVICE_HOST_ENV_NAME]) &&
             (self.port = env[SERVICE_PORT_ENV_NAME])
        raise ConfigError, 'Service host/port is not set'
      end

      # rubocop:disable LineLength
      raise ConfigError, 'Service token file does not exists' unless File.file?(token_file)
      raise ConfigError, 'Service token file does not exists' unless File.file?(ca_cert)
      # rubocop:enable LineLength
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

    def load_token
      File.open(token_file) do |io|
        self.token = io.read.chomp
      end
    end

    def configure(configuration)
      validate
      load_token
      configuration.api_key['authorization'] = "Bearer #{token}"
      configuration.scheme = 'https'
      configuration.host = "#{host}:#{port}"
      configuration.ssl_ca_cert = ca_cert
    end
  end
end
