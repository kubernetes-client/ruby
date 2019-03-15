# Copyright 2019 The Kubernetes Authors.
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

module Kubernetes
  # Configuration is a utility class for loading kubernetes configurations
  class Configuration
    def self.default_config
      result = Configuration.new
      return result if load_local_config(result)

      # In cluster config
      if InClusterConfig.in_cluster?
        k_config = InClusterConfig.new
        k_config.configure(result)
        return result
      end

      result.scheme = 'http'
      result.host = 'localhost:8080'
      result
    end

    def self.load_local_config(result)
      # KUBECONFIG environment variable
      kc = (ENV['KUBECONFIG']).to_s
      return load_file_config(kc, result) if File.exist?(kc)

      # default home location
      kc = "#{ENV['HOME']}/.kube/config"
      return unless File.exist?(kc)

      load_file_config(kc, result)
    end

    def self.load_file_config(file, result)
      k_config = KubeConfig.new(file)
      k_config.configure(result)
      result
    end
  end
end
