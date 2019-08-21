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
require 'config/matchers'
require 'fixtures/config/kube_config_hash'
require 'helpers/file_fixtures'
require 'spec_helper'

require 'kubernetes/config/kube_config'
require 'kubernetes/loader'

# rubocop:disable BlockLength
describe Kubernetes::KubeConfig do
  file = Kubernetes::Testing.file_fixture('config/config').to_s
  let(:kube_config) { Kubernetes::KubeConfig.new(file, TEST_KUBE_CONFIG) }

  context '#configure' do
    context 'if non user context is given' do
      it 'should configure non user configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'http'
          c.host = 'test-host:80'
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'no_user')
        expect(actual).to be_same_configuration_as(expected)
      end
    end

    context 'if empty user context is given' do
      it 'should configure non user configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'http'
          c.host = 'test-host:80'
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'empty_user')
        expect(actual).to be_same_configuration_as(expected)
      end
    end

    context 'if ssl context is given' do
      it 'should configure ssl configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'https'
          c.host = 'test-host:443'
          c.ssl_ca_cert =
            Kubernetes::Testing.file_fixture('certs/ca.crt').to_s
          c.cert_file =
            Kubernetes::Testing.file_fixture('certs/client.crt').to_s
          c.key_file =
            Kubernetes::Testing.file_fixture('certs/client.key').to_s
          c.verify_ssl = true
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'context_ssl')
        expect(actual).to be_same_configuration_as(expected)
      end
    end

    context 'if ssl no-verify context is given' do
      it 'should configure ssl configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'https'
          c.host = 'test-host:443'
          c.ssl_ca_cert =
            Kubernetes::Testing.file_fixture('certs/ca.crt').to_s
          c.cert_file =
            Kubernetes::Testing.file_fixture('certs/client.crt').to_s
          c.key_file =
            Kubernetes::Testing.file_fixture('certs/client.key').to_s
          c.verify_ssl = false
          c.verify_ssl_host = false
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'context_insecure')
        expect(actual).to be_same_configuration_as(expected)
        expect(actual.verify_ssl_host).to be_falsey
        expect(actual.verify_ssl).to be_falsey
      end
    end

    context 'if simple token context is given' do
      it 'should configure ssl configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'https'
          c.host = 'test-host:443'
          c.ssl_ca_cert = Kubernetes::Testing.file_fixture('certs/ca.crt').to_s
          c.api_key['authorization'] = "Bearer #{TEST_DATA_BASE64}"
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'context_token')
        expect(actual).to be_same_configuration_as(expected)
      end
    end
  end

  context '#config' do
    context 'if config hash is not given when it is initialized' do
      file = Kubernetes::Testing.file_fixture('config/empty').to_s
      let(:kube_config) { Kubernetes::KubeConfig.new(file) }
      it 'should load config' do
        expect(kube_config.config).to eq({})
      end
    end

    context 'if config hash is given when it is initialized' do
      let(:given_hash) { { given: 'hash' } }
      file = Kubernetes::Testing.file_fixture('config/empty').to_s
      let(:kube_config) { Kubernetes::KubeConfig.new(file, given_hash) }

      it 'should not load config' do
        expect(kube_config.config).to eq(given_hash)
      end
    end
  end

  context '#find_cluster' do
    context 'if valid name is given' do
      it 'should return cluster' do
        expect(kube_config.find_cluster('default')['server']).to eq(
          TEST_CLUSTER_DEFAULT['cluster']['server']
        )
      end
    end

    context 'if cluster does not have ca file' do
      it 'should create temporary ca file from ca data' do
        cluster = kube_config.find_cluster('ssl-data')
        ca_file = cluster['certificate-authority']
        expect(ca_file).not_to be_nil
        File.open(ca_file) do |io|
          expect(io.read).to eq(TEST_CERTIFICATE_AUTH)
        end
      end
    end

    context 'if insecure-skip-tls-verify is set to true' do
      it 'should return verify_ssl == false' do
        cluster = kube_config.find_cluster('ssl-data-insecure')

        expect(cluster['verify_ssl']).to be_falsey
      end
    end

    context 'if insecure-skip-tls-verify is not set' do
      it 'should return verify_ssl == true' do
        cluster = kube_config.find_cluster('ssl-data')

        expect(cluster['verify_ssl']).to be_truthy
      end
    end
  end

  context '#find_user' do
    context 'if valid name is given' do
      it 'should return user' do
        expect(kube_config.find_user('simple_token')['username']).to eq(
          TEST_USER_SIMPLE_TOKEN['user']['username']
        )
      end
    end

    context 'if user does not have client cert' do
      it 'should create temporary client cert from cert data' do
        user = kube_config.find_user('user_cert_data')
        cert_file = user['client-certificate']
        expect(cert_file).not_to be_nil
        File.open(cert_file) do |io|
          expect(io.read).to eq(TEST_CLIENT_CERT)
        end
      end
    end

    context 'if user does not have client key' do
      it 'should create temporary client key from key data' do
        user = kube_config.find_user('user_cert_data')
        key_file = user['client-key']
        expect(key_file).not_to be_nil
        File.open(key_file) do |io|
          expect(io.read).to eq(TEST_CLIENT_KEY)
        end
      end
    end

    context 'if user does not have token but has tokenFile' do
      it 'should read token from file if given' do
        user = kube_config.find_user('simple_token_file')

        expect(user['authorization']).to eq('Bearer token1')
      end
    end

    context 'if user has username and password' do
      it 'should return basic auth token' do
        user = kube_config.find_user('user_pass')

        expect(user['authorization']).to eq(TEST_BASIC_TOKEN)
      end
    end

    context 'if azure user' do
      it 'should return the access token' do
        user = kube_config.find_user('user_azure')

        expect(user['authorization']).to eq(TEST_AZURE_TOKEN)
      end
    end
  end

  context '#list_context_names' do
    it 'should list context names' do
      arr = %w[default no_user empty_user context_ssl context_insecure context_token].sort
      expect(kube_config.list_context_names.sort).to eq(arr)
    end
  end

  context '#find_context' do
    context 'if valid name is given' do
      it 'should return context' do
        expect(kube_config.find_context('default')['cluster']['server']).to eq(
          TEST_CLUSTER_DEFAULT['cluster']['server']
        )
        expect(kube_config.find_context('default')['user']['username']).to eq(
          TEST_USER_DEFAULT['user']['username']
        )
      end
    end
  end

  context '#current_context' do
    it 'should return current context' do
      expect(kube_config.current_context['cluster']['server']).to eq(
        TEST_CLUSTER_DEFAULT['cluster']['server']
      )
    end
  end

  context 'load from defaults' do
    before(:each) do
      # Clear out everything before each run.
      ENV['HOME'] = nil
      ENV['KUBECONFIG'] = nil
      ENV['KUBERNETES_SERVICE_HOST'] = nil
      ENV['KUBERNETES_SERVICE_PORT'] = nil

      # Suppress warnings
      warn_level = $VERBOSE
      $VERBOSE = nil
      Kubernetes::InClusterConfig::SERVICE_TOKEN_FILENAME =
        '/non/existent/file/token'.freeze
      Kubernetes::InClusterConfig::SERVICE_CA_CERT_FILENAME =
        '/non/existent/file/ca.crt'.freeze
      $VERBOSE = warn_level
    end

    it 'should load from KUBECONFIG' do
      ENV['KUBECONFIG'] =
        Kubernetes::Testing.file_fixture('config/config_2').to_s
      ENV['HOME'] = Kubernetes::Testing.file_fixture('config').to_s
      config = Kubernetes::Configuration.default_config

      expect(config.host).to eq('other:8080')
    end

    it 'should load from HOME' do
      ENV['HOME'] = Kubernetes::Testing.file_fixture('config').to_s
      config = Kubernetes::Configuration.default_config

      expect(config.host).to eq('firstconfig:8080')
    end

    it 'should load from cluster' do
      ENV['KUBERNETES_SERVICE_HOST'] = 'kubernetes'
      ENV['KUBERNETES_SERVICE_PORT'] = '8888'

      # Suppress warnings
      warn_level = $VERBOSE
      $VERBOSE = nil

      # Override constants for token and cert locations
      Kubernetes::InClusterConfig::SERVICE_TOKEN_FILENAME =
        Kubernetes::Testing.file_fixture('config/config').to_s
      Kubernetes::InClusterConfig::SERVICE_CA_CERT_FILENAME =
        Kubernetes::Testing.file_fixture('certs/ca.crt').to_s
      $VERBOSE = warn_level

      config = Kubernetes::Configuration.default_config

      expect(config.host).to eq('kubernetes:8888')
    end

    it 'should default to localhost' do
      config = Kubernetes::Configuration.default_config

      expect(config.host).to eq('localhost:8080')
    end
  end
end
# rubocop:enable BlockLength
