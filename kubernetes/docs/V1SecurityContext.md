# Kubernetes::V1SecurityContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_privilege_escalation** | **Boolean** | AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN | [optional] 
**capabilities** | [**V1Capabilities**](V1Capabilities.md) |  | [optional] 
**privileged** | **Boolean** | Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. | [optional] 
**proc_mount** | **String** | procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. | [optional] 
**read_only_root_filesystem** | **Boolean** | Whether this container has a read-only root filesystem. Default is false. | [optional] 
**run_as_group** | **Integer** | The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. | [optional] 
**run_as_non_root** | **Boolean** | Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. | [optional] 
**run_as_user** | **Integer** | The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. | [optional] 
**se_linux_options** | [**V1SELinuxOptions**](V1SELinuxOptions.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1SecurityContext.new(allow_privilege_escalation: null,
                                 capabilities: null,
                                 privileged: null,
                                 proc_mount: null,
                                 read_only_root_filesystem: null,
                                 run_as_group: null,
                                 run_as_non_root: null,
                                 run_as_user: null,
                                 se_linux_options: null)
```


