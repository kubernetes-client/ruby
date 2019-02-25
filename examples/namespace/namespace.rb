
require 'kubernetes'
require 'pp'
kube_config = Kubernetes::KubeConfig.new("#{ENV['HOME']}/.kube/config")
config = Kubernetes::Configuration.new()
kube_config.configure(config)
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
