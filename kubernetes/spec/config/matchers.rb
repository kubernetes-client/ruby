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

RSpec::Matchers.define :be_same_configuration_as do |expected|
  match do |actual|
    to_h = Proc.new do |configuration|
      {}.tap do |hash|
        configuration.instance_variables.each do |var|
          value = configuration.instance_variable_get(var)
          if value.kind_of?(Hash) || value.kind_of?(String)
            hash[var.to_s.tr('@', '')] = value
          end
        end
      end
    end
    to_h.call(actual) == to_h.call(expected)
  end
end
