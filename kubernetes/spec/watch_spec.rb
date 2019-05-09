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

require 'spec_helper'
require 'kubernetes/watch'

describe 'WatchClient' do
  it 'should construct correctly' do
    Kubernetes::Watch.new(nil)
  end

  it 'should parse chunks correctly' do
    client = Kubernetes::Watch.new(nil)
    last = ''

    last, data = client.split_lines(last, "foo\nbar\nba")

    expect(last).to eq('ba')
    expect(data).to eq(%w[foo bar])

    last, data = client.split_lines(last, "z\nblah\n")
    expect(last).to eq('')
    expect(data).to eq(%w[baz blah])
  end
end
