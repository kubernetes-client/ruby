require 'kubernetes'
require 'pp'

config = Kubernetes::Configuration.default_config()
client = Kubernetes::CoreV1Api.new(Kubernetes::ApiClient.new(config))

pp client.list_namespaced_pod('default')

