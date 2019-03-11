
require 'kubernetes'
require 'pp'

config = Kubernetes::Configuration.default_config()
client = Kubernetes::CoreV1Api.new(Kubernetes::ApiClient.new(config))

name = 'temp'

namespace = Kubernetes::V1Namespace.new({
    kind: 'Namespace',
    metadata: {
        name: name,
    },
})

pp client.create_namespace(namespace)
pp client.list_namespace
pp client.delete_namespace(name)
