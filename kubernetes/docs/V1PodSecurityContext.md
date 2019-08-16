# Kubernetes::V1PodSecurityContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_group** | **Integer** | A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:  1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR&#39;d with rw-rw----  If unset, the Kubelet will not modify the ownership and permissions of any volume. | [optional] 
**run_as_group** | **Integer** | The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. | [optional] 
**run_as_non_root** | **Boolean** | Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. | [optional] 
**run_as_user** | **Integer** | The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. | [optional] 
**se_linux_options** | [**V1SELinuxOptions**](V1SELinuxOptions.md) |  | [optional] 
**supplemental_groups** | **Array&lt;Integer&gt;** | A list of groups applied to the first process run in each container, in addition to the container&#39;s primary GID.  If unspecified, no groups will be added to any container. | [optional] 
**sysctls** | [**Array&lt;V1Sysctl&gt;**](V1Sysctl.md) | Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PodSecurityContext.new(fs_group: null,
                                 run_as_group: null,
                                 run_as_non_root: null,
                                 run_as_user: null,
                                 se_linux_options: null,
                                 supplemental_groups: null,
                                 sysctls: null)
```


