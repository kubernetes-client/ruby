# Kubernetes Ruby Client

Ruby client for the [kubernetes](http://kubernetes.io/) API.

## Usage
```ruby
require 'kubernetes'
require 'pp'

kube_config = Kubernetes::KubeConfig.new("#{ENV['HOME']}/.kube/config")
config = Kubernetes::Configuration.new()

kube_config.configure(config)

client = Kubernetes::CoreV1Api.new(Kubernetes::ApiClient.new(config))

pp client.list_namespaced_pod('default')
```

## Contribute

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for instructions on how to contribute.

## Code of conduct

Participation in the Kubernetes community is governed by the [Kubernetes Code of Conduct](code-of-conduct.md).

# Development

## Update client

to update the client clone the `gen` repo and run this command at the root of the client repo:

```bash
${GEN_REPO_BASE}/openapi/ruby.sh kubernetes settings
```

## License

This program follows the Apache License version 2.0 (http://www.apache.org/licenses/ ).  See LICENSE file included with the distribution for details.
