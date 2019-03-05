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

  class InClusterConfig

    SERVICE_HOST_ENV_NAME = "KUBERNETES_SERVICE_HOST"
    SERVICE_PORT_ENV_NAME = "KUBERNETES_SERVICE_PORT"
    SERVICE_TOKEN_FILENAME = "/var/run/secrets/kubernetes.io/serviceaccount/token"
    SERVICE_CA_CERT_FILENAME = "/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"

    attr_accessor :host
    attr_accessor :port
    attr_accessor :token

    def validate
      unless (self.host = self.env[SERVICE_HOST_ENV_NAME]) && (self.port = self.env[SERVICE_PORT_ENV_NAME])
        raise ConfigError.new("Service host/port is not set")
      end
      raise ConfigError.new("Service token file does not exists") unless File.file?(self.token_file)
      raise ConfigError.new("Service token file does not exists") unless File.file?(self.ca_cert)
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
      open(self.token_file) do |io|
        self.token = io.read.chomp
      end
    end

    def configure(configuration)
      validate
      load_token
      configuration.api_key['authorization'] = "Bearer #{self.token}"
      configuration.scheme = 'https'
      configuration.host = "#{self.host}:#{self.port}"
      configuration.ssl_ca_cert = self.ca_cert
    end
  end

end
