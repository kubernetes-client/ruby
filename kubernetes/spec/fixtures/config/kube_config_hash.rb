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
