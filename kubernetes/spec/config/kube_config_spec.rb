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
require 'spec_helper'
require 'config/matchers'

require 'kubernetes/config/kube_config'


TEST_TOKEN_FILE = Kubernetes::Testing.file_fixture('tokens/token')

TEST_DATA = "test-data"
TEST_DATA_BASE64 = Base64.strict_encode64(TEST_DATA)

TEST_HOST = "http://test-host"
TEST_USERNAME = "me"
TEST_PASSWORD = "pass"
# token for me:pass
TEST_BASIC_TOKEN = "Basic bWU6cGFzcw=="

TEST_SSL_HOST = "https://test-host"
TEST_CERTIFICATE_AUTH = "cert-auth"
TEST_CERTIFICATE_AUTH_BASE64 = Base64.strict_encode64(TEST_CERTIFICATE_AUTH)
TEST_CLIENT_KEY = "client-key"
TEST_CLIENT_KEY_BASE64 = Base64.strict_encode64(TEST_CLIENT_KEY)
TEST_CLIENT_CERT = "client-cert"
TEST_CLIENT_CERT_BASE64 = Base64.strict_encode64(TEST_CLIENT_CERT)

TEST_CONTEXT_DEFAULT = {
  'name' => 'default',
  'context' => {
    'cluster' => 'default',
    'user' => 'default',
  }
}
TEST_CONTEXT_NO_USER = {
  'name' => 'no_user',
  'context' => {
    'cluster' => 'default',
  }
}
TEST_CONTEXT_SSL = {
  'name' => 'context_ssl',
  'context' => {
    'cluster' => 'ssl-file',
    'user' => 'user_cert_file',
  }
}
TEST_CONTEXT_TOKEN = {
  'name' => 'context_token',
  'context' => {
    'cluster' => 'ssl-file',
    'user' => 'simple_token',
  }
}

TEST_CLUSTER_DEFAULT = {
  'name' => 'default',
  'cluster' => {
    'server' => TEST_HOST,
  },
}
TEST_CLUSTER_SSL_FILE = {
  'name' => 'ssl-file',
  'cluster' => {
    'server' => TEST_SSL_HOST,
    'certificate-authority' => Kubernetes::Testing.file_fixture('certs/ca.crt').to_s,
  },
}
TEST_CLUSTER_SSL_DATA = {
  'name' => 'ssl-data',
  'cluster' => {
    'server' => TEST_SSL_HOST,
    'certificate-authority-data' => TEST_CERTIFICATE_AUTH_BASE64,
  },
}
TEST_CLUSTER_INSECURE = {
  'name' => 'ssl-data-insecure',
  'cluster' => {
    'server' => TEST_SSL_HOST,
    'certificate-authority-data' => TEST_CERTIFICATE_AUTH_BASE64,
    'insecure-skip-tls-verify' => true,
  },
}

TEST_USER_DEFAULT = {
  'name' => 'default',
  'user' => {
    'token' => TEST_DATA_BASE64,
  }
}
TEST_USER_SIMPLE_TOKEN = {
  'name' => 'simple_token',
  'user' => {
    'token' => TEST_DATA_BASE64,
    'username' => TEST_USERNAME,  # should be ignored
    'password' => TEST_PASSWORD,  # should be ignored
  },
}
TEST_USER_SIMPLE_TOKEN_FILE = {
  'name' => 'simple_token_file',
  'user' => {
    'tokenFile' => TEST_TOKEN_FILE,
    'username' => TEST_USERNAME,  # should be ignored
    'password' => TEST_PASSWORD,  # should be ignored
  },
}
TEST_USER_USER_PASS = {
  'name' => 'user_pass',
  'user' => {
    'username' => TEST_USERNAME,  # should be ignored
    'password' => TEST_PASSWORD,  # should be ignored
  },
}
TEST_USER_CERT_DATA = {
  'name' => 'user_cert_data',
  'user' => {
    'token' => TEST_DATA_BASE64,
    'client-certificate-data' => TEST_CLIENT_CERT_BASE64,
    'client-key-data' => TEST_CLIENT_KEY_BASE64,
  },
}
TEST_USER_CERT_FILE = {
  'name' => 'user_cert_file',
  'user' => {
    'client-certificate' => Kubernetes::Testing.file_fixture('certs/client.crt').to_s,
    'client-key' => Kubernetes::Testing.file_fixture('certs/client.key').to_s,
  },
}

TEST_KUBE_CONFIG = {
  'current-context' => 'no_user',
  'contexts' => [
    TEST_CONTEXT_DEFAULT,
    TEST_CONTEXT_NO_USER,
    TEST_CONTEXT_SSL,
    TEST_CONTEXT_TOKEN,
  ],
  'clusters' => [
    TEST_CLUSTER_DEFAULT,
    TEST_CLUSTER_SSL_FILE,
    TEST_CLUSTER_SSL_DATA,
    TEST_CLUSTER_INSECURE,
  ],
  'users' => [
    TEST_USER_DEFAULT,
    TEST_USER_SIMPLE_TOKEN,
    TEST_USER_SIMPLE_TOKEN_FILE,
    TEST_USER_USER_PASS,
    TEST_USER_CERT_DATA,
    TEST_USER_CERT_FILE,
  ],
}


describe Kubernetes::KubeConfig do
  let(:kube_config) { Kubernetes::KubeConfig.new(file_fixture('config/config').to_s, TEST_KUBE_CONFIG) }

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

    context 'if ssl context is given' do
      it 'should configure ssl configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'https'
          c.host = 'test-host:443'
          c.ssl_ca_cert = file_fixture('certs/ca.crt').to_s
          c.cert_file = file_fixture('certs/client.crt').to_s
          c.key_file = file_fixture('certs/client.key').to_s
        end
        actual = Kubernetes::Configuration.new

        kube_config.configure(actual, 'context_ssl')
        expect(actual).to be_same_configuration_as(expected)
      end
    end

    context 'if simple token context is given' do
      it 'should configure ssl configuration' do
        expected = Kubernetes::Configuration.new do |c|
          c.scheme = 'https'
          c.host = 'test-host:443'
          c.ssl_ca_cert = file_fixture('certs/ca.crt').to_s
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
      let(:kube_config) { Kubernetes::KubeConfig.new(file_fixture('config/empty').to_s) }
      it 'should load config' do
        expect(kube_config.config).to eq({})
      end
    end

    context 'if config hash is given when it is initialized' do
      let(:given_hash) { {given: 'hash'} }
      let(:kube_config) { Kubernetes::KubeConfig.new(file_fixture('config/empty').to_s, given_hash) }

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
        open(ca_file) do |io|
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
        open(cert_file) do |io|
          expect(io.read).to eq(TEST_CLIENT_CERT)
        end
      end
    end

    context 'if user does not have client key' do
      it 'should create temporary client key from key data' do
        user = kube_config.find_user('user_cert_data')
        key_file = user['client-key']
        expect(key_file).not_to be_nil
        open(key_file) do |io|
          expect(io.read).to eq(TEST_CLIENT_KEY)
        end
      end
    end

    context 'if user does not have token but has tokenFile' do
      it 'should read token from file if given' do
        user = kube_config.find_user('simple_token_file')

        expect(user['authorization']).to eq("Bearer token1")
      end
    end

    context 'if user has username and password' do
      it 'should return basic auth token' do
        user = kube_config.find_user('user_pass')

        expect(user['authorization']).to eq(TEST_BASIC_TOKEN)
      end
    end
  end

  context '#list_context_names' do
    it 'should list context names' do
      expect(kube_config.list_context_names.sort).to eq(["default", "no_user", "context_ssl", "context_token"].sort)
    end
  end

  context '#find_context' do
    context 'if valid name is given' do
      it 'should return context' do
        expect(kube_config.find_context('default')['cluster']['server']).to eq(
            TEST_CLUSTER_DEFAULT['cluster']['server'],
        )
        expect(kube_config.find_context('default')['user']['username']).to eq(
          TEST_USER_DEFAULT['user']['username'],
        )
      end
    end
  end

  context '#current_context' do
    it 'should return current context' do
      expect(kube_config.current_context['cluster']['server']).to eq(
        TEST_CLUSTER_DEFAULT['cluster']['server'],
      )
    end
  end

  context '#create_temp_file_with_base64content' do
    context 'when it is called at first time' do
      it 'should return temp file path' do
        expected_path = 'tempfile-path'
        content = TEST_DATA_BASE64
        io = double('io')
        expect(io).to receive(:path).and_return(expected_path)
        expect(io).to receive(:write).with(TEST_DATA)
        allow(Tempfile).to receive(:open).and_yield(io)

        expect(kube_config.send(:create_temp_file_with_base64content, content)).to eq(expected_path)
      end
    end

    context 'when it is already called' do
      it 'should return cached value' do
        expected_path = 'tempfile-path'
        content = TEST_DATA_BASE64
        Kubernetes::KubeConfig.class_eval { class_variable_get(:@@temp_files)[content] = expected_path}
        io = double('io')
        expect(io).not_to receive(:path)
        expect(io).not_to receive(:write).with(TEST_DATA)

        expect(kube_config.send(:create_temp_file_with_base64content, content)).to eq(expected_path)
      end
    end
  end
end
