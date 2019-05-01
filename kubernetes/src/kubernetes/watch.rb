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

require 'json'

# The Kubernetes module encapsulates the Kubernetes client for Ruby
module Kubernetes
  # The Watch class provides the ability to watch a specific resource for
  # updates.
  class Watch
    def initialize(client)
      @client = client
    end

    def connect(path, resource_version, &_block)
      opts = { auth_names: ['BearerToken'] }
      query = '?watch=true'
      query += "&resourceVersion=#{resource_version}" if resource_version
      request = @client.build_request('GET', path + query, opts)
      last = ''
      request.on_body do |chunk|
        last, pieces = split_lines(last, chunk)
        pieces.each do |part|
          yield JSON.parse(part)
        end
      end
      request.run
    end

    def split_lines(last, chunk)
      data = chunk
      data = last + '' + data

      ix = data.rindex("\n")
      return [data, []] unless ix

      complete = data[0..ix]
      last = data[(ix + 1)..data.length]
      [last, complete.split(/\n/)]
    end
  end
end
