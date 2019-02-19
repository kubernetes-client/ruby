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

require 'spec_helper'
require 'config/matchers'
require 'helpers/file_fixtures'

require 'kubernetes/config/incluster_config'


describe Kubernetes::InClusterConfig do

  context '#configure' do
    let(:incluster_config) do
      Kubernetes::InClusterConfig.new.tap do |c|
        c.instance_variable_set(:@env, {
          Kubernetes::InClusterConfig::SERVICE_HOST_ENV_NAME => 'localhost',
          Kubernetes::InClusterConfig::SERVICE_PORT_ENV_NAME => '443',
        })
        c.instance_variable_set(:@ca_cert, Kubernetes::Testing::file_fixture('certs/ca.crt').to_s)
        c.instance_variable_set(:@token_file, Kubernetes::Testing::file_fixture('tokens/token').to_s)
      end
    end

    it 'should configure configuration' do
      expected = Kubernetes::Configuration.new do |c|
        c.scheme = 'https'
        c.host = 'localhost:443'
        c.ssl_ca_cert = Kubernetes::Testing::file_fixture('certs/ca.crt').to_s
        c.api_key['authorization'] = 'Bearer token1'
      end
      actual = Kubernetes::Configuration.new

      incluster_config.configure(actual)
      expect(actual).to be_same_configuration_as(expected)
    end
  end

  context '#validate' do
    let(:incluster_config) do
      Kubernetes::InClusterConfig.new.tap do |c|
        c.instance_variable_set(:@env, {
          Kubernetes::InClusterConfig::SERVICE_HOST_ENV_NAME => 'localhost',
          Kubernetes::InClusterConfig::SERVICE_PORT_ENV_NAME => '443',
        })
        c.instance_variable_set(:@ca_cert, Kubernetes::Testing::file_fixture('certs/ca.crt').to_s)
        c.instance_variable_set(:@token_file, Kubernetes::Testing::file_fixture('tokens/token').to_s)
      end
    end

    context 'if valid environment' do

      it 'shold not raise ConfigError' do
        expect { incluster_config.validate }.not_to raise_error
      end
    end

    context 'if SERVICE_HOST_ENV_NAME env variable is not set' do

      it 'should raise ConfigError' do
        incluster_config.env[Kubernetes::InClusterConfig::SERVICE_HOST_ENV_NAME] = nil

        expect { incluster_config.validate }.to raise_error(Kubernetes::ConfigError)
      end
    end

    context 'if SERVICE_PORT_ENV_NAME env variable is not set' do

      it 'should raise ConfigError' do
        incluster_config.env[Kubernetes::InClusterConfig::SERVICE_PORT_ENV_NAME] = nil

        expect { incluster_config.validate }.to raise_error(Kubernetes::ConfigError)
      end
    end

    context 'if ca_cert file is not exist' do

      it 'shold raise ConfigError' do
        incluster_config.instance_variable_set(:@ca_cert, 'certs/no_ca.crt')

        expect { incluster_config.validate }.to raise_error(Kubernetes::ConfigError)
      end
    end

    context 'if token file is not exist' do

      it 'shold raise ConfigError' do
        incluster_config.instance_variable_set(:@token_file, 'tokens/no_token')

        expect { incluster_config.validate }.to raise_error(Kubernetes::ConfigError)
      end
    end
  end

  context '#ca_cert' do
    let(:incluster_config) { Kubernetes::InClusterConfig.new }

    it 'shold return "/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"' do
      expect(incluster_config.ca_cert).to eq('/var/run/secrets/kubernetes.io/serviceaccount/ca.crt')
    end
  end

  context '#token_file' do
    let(:incluster_config) { Kubernetes::InClusterConfig.new }

    it 'shold return "/var/run/secrets/kubernetes.io/serviceaccount/token"' do
      expect(incluster_config.token_file).to eq('/var/run/secrets/kubernetes.io/serviceaccount/token')
    end
  end
end
