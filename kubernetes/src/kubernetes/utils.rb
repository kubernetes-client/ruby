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

require 'kubernetes/config/incluster_config'
require 'kubernetes/config/kube_config'

# The Kubernetes module encapsulates the Kubernetes client for Ruby
module Kubernetes
  #
  # Use the service account kubernetes gives to pods to connect to kubernetes
  # cluster. It's intended for clients that expect to be running inside a pod
  # running on kubernetes. It will raise an exception if called from a process
  # not running in a kubernetes environment.
  def load_incluster_config(client_configuration: Configuration.default)
    config = InClusterConfig.new
    config.configure(client_configuration)
  end

  #
  # Loads authentication and cluster information from kube-config file
  # and stores them in Kubernetes::Configuration.
  # @param config_file [String] Path of the kube-config file.
  # @param context [String] Set the active context. If is set to nil,
  #   current_context from config file will be used.
  # @param client_configuration [Kubernetes::Configuration] The
  #   Kubernetes::Configuration tp set configs to.
  def load_kube_config(
    config_file = ENV['KUBECONFIG'],
    context: nil,
    client_configuration: Configuration.default
  )
    config_file ||= KubeConfig::KUBE_CONFIG_DEFAULT_LOCATION
    config = KubeConfig.new(config_file)
    config.configure(client_configuration, context)
  end

  #
  # Loads configuration the same as load_kube_config but returns an ApiClient
  # to be used with any API object. This will allow the caller to concurrently
  # talk with multiple clusters.
  # @param config_file [String] Path of the kube-config file.
  # @param context [String] Set the active context. If is set to nil,
  #    current_context from config file will be used.
  # @return [Kubernetes::ApiClient] Api client for Kubernetes cluster
  def new_client_from_config(
    config_file = ENV['KUBECONFIG'],
    context: nil
  )
    config_file ||= KubeConfig::KUBE_CONFIG_DEFAULT_LOCATION
    client_configuration = Configuration.new
    load_kube_config(config_file,
                     context: context,
                     client_configuration: client_configuration)
    ApiClient.new(client_configuration)
  end

  def create_temp_file_and_set(obj, key)
    return unless obj && !obj[key] && obj["#{key}-data"]

    obj[key] = create_temp_file_with_base64content(obj["#{key}-data"])
  end

  @temp_files = {}

  def create_temp_file_with_base64content(content)
    @temp_files[content] ||= Tempfile.open('kube') do |temp|
      temp.write(Base64.strict_decode64(content))
      temp
    end

    @temp_files[content].path
  end

  def clear_temp_files
    @temp_files = {}
  end

  module_function :new_client_from_config, :load_incluster_config,
                  :load_kube_config, :create_temp_file_and_set,
                  :create_temp_file_with_base64content, :clear_temp_files
end
