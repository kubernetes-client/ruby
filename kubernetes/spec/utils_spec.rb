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
require 'fixtures/config/kube_config_hash'
require 'helpers/file_fixtures'

require 'kubernetes/utils'


describe Kubernetes do

  describe '.load_incluster_config' do
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

    it 'should configure client configuration from in-cluster config' do
      allow(Kubernetes::InClusterConfig).to receive(:new).and_return(incluster_config)
      expected = Kubernetes::Configuration.new do |c|
        c.scheme = 'https'
        c.host = 'localhost:443'
        c.ssl_ca_cert = Kubernetes::Testing::file_fixture('certs/ca.crt').to_s
        c.api_key['authorization'] = 'Bearer token1'
      end
      actual = Kubernetes::Configuration.new

      Kubernetes.load_incluster_config(client_configuration: actual)
      expect(actual).to be_same_configuration_as(expected)
    end
  end

  describe '.load_kube_config' do
    let(:kube_config) { Kubernetes::KubeConfig.new(Kubernetes::Testing::file_fixture('config/config').to_s, TEST_KUBE_CONFIG) }

    it 'should configure client configuration from kube_config' do
      kubeconfig_path = 'kubeconfig/path'
      allow(Kubernetes::KubeConfig).to receive(:new).with(kubeconfig_path).and_return(kube_config)
      expected = Kubernetes::Configuration.new do |c|
        c.scheme = 'https'
        c.host = 'test-host:443'
        c.ssl_ca_cert = Kubernetes::Testing::file_fixture('certs/ca.crt').to_s
        c.cert_file = Kubernetes::Testing::file_fixture('certs/client.crt').to_s
        c.key_file = Kubernetes::Testing::file_fixture('certs/client.key').to_s
      end
      actual = Kubernetes::Configuration.new

      Kubernetes.load_kube_config(
        kubeconfig_path,
        context: 'context_ssl',
        client_configuration: actual
      )
      expect(actual).to be_same_configuration_as(expected)
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

        expect(Kubernetes.create_temp_file_with_base64content(content)).to eq(expected_path)
      end
    end

    context 'when it is already called' do
      it 'should return cached value' do
        expected_path = 'tempfile-path'
        content = TEST_DATA_BASE64
        Kubernetes::cache_temp_file(content, expected_path)
        io = double('io')
        expect(io).not_to receive(:path)
        expect(io).not_to receive(:write).with(TEST_DATA)

        expect(Kubernetes.create_temp_file_with_base64content(content)).to eq(expected_path)
      end
    end
  end
end
