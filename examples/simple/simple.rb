require 'kubernetes'
require 'pp'

kube_config = Kubernetes::KubeConfig.new("#{ENV['HOME']}/.kube/config")
config = Kubernetes::Configuration.new()

kube_config.configure(config)

client = Kubernetes::CoreV1Api.new(Kubernetes::ApiClient.new(config))

pp client.list_namespaced_pod('default')

