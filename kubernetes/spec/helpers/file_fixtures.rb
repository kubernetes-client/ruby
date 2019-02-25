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

require 'pathname'

module Kubernetes
  module Testing
    module FileFixtures
      FIXTURES_DIR_PATH = File.join(File.dirname(__FILE__), '..', 'fixtures', 'files')

      # Returns a +Pathname+ to the fixture file named +fixture_name+.
      #
      # Raises +ArgumentError+ if +fixture_name+ can't be found.
      def file_fixture(fixture_name)
        path = Pathname.new(File.join(FIXTURES_DIR_PATH, fixture_name))

        if path.exist?
          path
        else
          msg = "the directory '%s' does not contain a file named '%s'"
          raise ArgumentError, msg % [file_fixture_path, fixture_name]
        end
      end
    end

    extend FileFixtures
  end
end
