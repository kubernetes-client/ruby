# Kubernetes::ExtensionsV1beta1PodSecurityPolicySpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_privilege_escalation** | **Boolean** | allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true. | [optional] 
**allowed_csi_drivers** | [**Array&lt;ExtensionsV1beta1AllowedCSIDriver&gt;**](ExtensionsV1beta1AllowedCSIDriver.md) | AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value means no CSI drivers can run inline within a pod spec. | [optional] 
**allowed_capabilities** | **Array&lt;String&gt;** | allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author&#39;s discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities. | [optional] 
**allowed_flex_volumes** | [**Array&lt;ExtensionsV1beta1AllowedFlexVolume&gt;**](ExtensionsV1beta1AllowedFlexVolume.md) | allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the \&quot;volumes\&quot; field. | [optional] 
**allowed_host_paths** | [**Array&lt;ExtensionsV1beta1AllowedHostPath&gt;**](ExtensionsV1beta1AllowedHostPath.md) | allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used. | [optional] 
**allowed_proc_mount_types** | **Array&lt;String&gt;** | AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled. | [optional] 
**allowed_unsafe_sysctls** | **Array&lt;String&gt;** | allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \&quot;*\&quot; in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.  Examples: e.g. \&quot;foo/*\&quot; allows \&quot;foo/bar\&quot;, \&quot;foo/baz\&quot;, etc. e.g. \&quot;foo.*\&quot; allows \&quot;foo.bar\&quot;, \&quot;foo.baz\&quot;, etc. | [optional] 
**default_add_capabilities** | **Array&lt;String&gt;** | defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list. | [optional] 
**default_allow_privilege_escalation** | **Boolean** | defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process. | [optional] 
**forbidden_sysctls** | **Array&lt;String&gt;** | forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \&quot;*\&quot; in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.  Examples: e.g. \&quot;foo/*\&quot; forbids \&quot;foo/bar\&quot;, \&quot;foo/baz\&quot;, etc. e.g. \&quot;foo.*\&quot; forbids \&quot;foo.bar\&quot;, \&quot;foo.baz\&quot;, etc. | [optional] 
**fs_group** | [**ExtensionsV1beta1FSGroupStrategyOptions**](ExtensionsV1beta1FSGroupStrategyOptions.md) |  | 
**host_ipc** | **Boolean** | hostIPC determines if the policy allows the use of HostIPC in the pod spec. | [optional] 
**host_network** | **Boolean** | hostNetwork determines if the policy allows the use of HostNetwork in the pod spec. | [optional] 
**host_pid** | **Boolean** | hostPID determines if the policy allows the use of HostPID in the pod spec. | [optional] 
**host_ports** | [**Array&lt;ExtensionsV1beta1HostPortRange&gt;**](ExtensionsV1beta1HostPortRange.md) | hostPorts determines which host port ranges are allowed to be exposed. | [optional] 
**privileged** | **Boolean** | privileged determines if a pod can request to be run as privileged. | [optional] 
**read_only_root_filesystem** | **Boolean** | readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to. | [optional] 
**required_drop_capabilities** | **Array&lt;String&gt;** | requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added. | [optional] 
**run_as_group** | [**ExtensionsV1beta1RunAsGroupStrategyOptions**](ExtensionsV1beta1RunAsGroupStrategyOptions.md) |  | [optional] 
**run_as_user** | [**ExtensionsV1beta1RunAsUserStrategyOptions**](ExtensionsV1beta1RunAsUserStrategyOptions.md) |  | 
**se_linux** | [**ExtensionsV1beta1SELinuxStrategyOptions**](ExtensionsV1beta1SELinuxStrategyOptions.md) |  | 
**supplemental_groups** | [**ExtensionsV1beta1SupplementalGroupsStrategyOptions**](ExtensionsV1beta1SupplementalGroupsStrategyOptions.md) |  | 
**volumes** | **Array&lt;String&gt;** | volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use &#39;*&#39;. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::ExtensionsV1beta1PodSecurityPolicySpec.new(allow_privilege_escalation: null,
                                 allowed_csi_drivers: null,
                                 allowed_capabilities: null,
                                 allowed_flex_volumes: null,
                                 allowed_host_paths: null,
                                 allowed_proc_mount_types: null,
                                 allowed_unsafe_sysctls: null,
                                 default_add_capabilities: null,
                                 default_allow_privilege_escalation: null,
                                 forbidden_sysctls: null,
                                 fs_group: null,
                                 host_ipc: null,
                                 host_network: null,
                                 host_pid: null,
                                 host_ports: null,
                                 privileged: null,
                                 read_only_root_filesystem: null,
                                 required_drop_capabilities: null,
                                 run_as_group: null,
                                 run_as_user: null,
                                 se_linux: null,
                                 supplemental_groups: null,
                                 volumes: null)
```


