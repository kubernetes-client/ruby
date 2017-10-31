=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # Pod Security Policy Spec defines the policy enforced.
  class V1beta1PodSecurityPolicySpec
    # AllowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
    attr_accessor :allow_privilege_escalation

    # AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities.
    attr_accessor :allowed_capabilities

    # is a white list of allowed host paths. Empty indicates that all host paths may be used.
    attr_accessor :allowed_host_paths

    # DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capabiility in both DefaultAddCapabilities and RequiredDropCapabilities.
    attr_accessor :default_add_capabilities

    # DefaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    attr_accessor :default_allow_privilege_escalation

    # FSGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    attr_accessor :fs_group

    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    attr_accessor :host_ipc

    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    attr_accessor :host_network

    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    attr_accessor :host_pid

    # hostPorts determines which host port ranges are allowed to be exposed.
    attr_accessor :host_ports

    # privileged determines if a pod can request to be run as privileged.
    attr_accessor :privileged

    # ReadOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    attr_accessor :read_only_root_filesystem

    # RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    attr_accessor :required_drop_capabilities

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    attr_accessor :run_as_user

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    attr_accessor :se_linux

    # SupplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    attr_accessor :supplemental_groups

    # volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used.
    attr_accessor :volumes


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_privilege_escalation' => :'allowPrivilegeEscalation',
        :'allowed_capabilities' => :'allowedCapabilities',
        :'allowed_host_paths' => :'allowedHostPaths',
        :'default_add_capabilities' => :'defaultAddCapabilities',
        :'default_allow_privilege_escalation' => :'defaultAllowPrivilegeEscalation',
        :'fs_group' => :'fsGroup',
        :'host_ipc' => :'hostIPC',
        :'host_network' => :'hostNetwork',
        :'host_pid' => :'hostPID',
        :'host_ports' => :'hostPorts',
        :'privileged' => :'privileged',
        :'read_only_root_filesystem' => :'readOnlyRootFilesystem',
        :'required_drop_capabilities' => :'requiredDropCapabilities',
        :'run_as_user' => :'runAsUser',
        :'se_linux' => :'seLinux',
        :'supplemental_groups' => :'supplementalGroups',
        :'volumes' => :'volumes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_privilege_escalation' => :'BOOLEAN',
        :'allowed_capabilities' => :'Array<String>',
        :'allowed_host_paths' => :'Array<V1beta1AllowedHostPath>',
        :'default_add_capabilities' => :'Array<String>',
        :'default_allow_privilege_escalation' => :'BOOLEAN',
        :'fs_group' => :'V1beta1FSGroupStrategyOptions',
        :'host_ipc' => :'BOOLEAN',
        :'host_network' => :'BOOLEAN',
        :'host_pid' => :'BOOLEAN',
        :'host_ports' => :'Array<V1beta1HostPortRange>',
        :'privileged' => :'BOOLEAN',
        :'read_only_root_filesystem' => :'BOOLEAN',
        :'required_drop_capabilities' => :'Array<String>',
        :'run_as_user' => :'V1beta1RunAsUserStrategyOptions',
        :'se_linux' => :'V1beta1SELinuxStrategyOptions',
        :'supplemental_groups' => :'V1beta1SupplementalGroupsStrategyOptions',
        :'volumes' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'allowPrivilegeEscalation')
        self.allow_privilege_escalation = attributes[:'allowPrivilegeEscalation']
      end

      if attributes.has_key?(:'allowedCapabilities')
        if (value = attributes[:'allowedCapabilities']).is_a?(Array)
          self.allowed_capabilities = value
        end
      end

      if attributes.has_key?(:'allowedHostPaths')
        if (value = attributes[:'allowedHostPaths']).is_a?(Array)
          self.allowed_host_paths = value
        end
      end

      if attributes.has_key?(:'defaultAddCapabilities')
        if (value = attributes[:'defaultAddCapabilities']).is_a?(Array)
          self.default_add_capabilities = value
        end
      end

      if attributes.has_key?(:'defaultAllowPrivilegeEscalation')
        self.default_allow_privilege_escalation = attributes[:'defaultAllowPrivilegeEscalation']
      end

      if attributes.has_key?(:'fsGroup')
        self.fs_group = attributes[:'fsGroup']
      end

      if attributes.has_key?(:'hostIPC')
        self.host_ipc = attributes[:'hostIPC']
      end

      if attributes.has_key?(:'hostNetwork')
        self.host_network = attributes[:'hostNetwork']
      end

      if attributes.has_key?(:'hostPID')
        self.host_pid = attributes[:'hostPID']
      end

      if attributes.has_key?(:'hostPorts')
        if (value = attributes[:'hostPorts']).is_a?(Array)
          self.host_ports = value
        end
      end

      if attributes.has_key?(:'privileged')
        self.privileged = attributes[:'privileged']
      end

      if attributes.has_key?(:'readOnlyRootFilesystem')
        self.read_only_root_filesystem = attributes[:'readOnlyRootFilesystem']
      end

      if attributes.has_key?(:'requiredDropCapabilities')
        if (value = attributes[:'requiredDropCapabilities']).is_a?(Array)
          self.required_drop_capabilities = value
        end
      end

      if attributes.has_key?(:'runAsUser')
        self.run_as_user = attributes[:'runAsUser']
      end

      if attributes.has_key?(:'seLinux')
        self.se_linux = attributes[:'seLinux']
      end

      if attributes.has_key?(:'supplementalGroups')
        self.supplemental_groups = attributes[:'supplementalGroups']
      end

      if attributes.has_key?(:'volumes')
        if (value = attributes[:'volumes']).is_a?(Array)
          self.volumes = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @fs_group.nil?
        invalid_properties.push("invalid value for 'fs_group', fs_group cannot be nil.")
      end

      if @run_as_user.nil?
        invalid_properties.push("invalid value for 'run_as_user', run_as_user cannot be nil.")
      end

      if @se_linux.nil?
        invalid_properties.push("invalid value for 'se_linux', se_linux cannot be nil.")
      end

      if @supplemental_groups.nil?
        invalid_properties.push("invalid value for 'supplemental_groups', supplemental_groups cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fs_group.nil?
      return false if @run_as_user.nil?
      return false if @se_linux.nil?
      return false if @supplemental_groups.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_privilege_escalation == o.allow_privilege_escalation &&
          allowed_capabilities == o.allowed_capabilities &&
          allowed_host_paths == o.allowed_host_paths &&
          default_add_capabilities == o.default_add_capabilities &&
          default_allow_privilege_escalation == o.default_allow_privilege_escalation &&
          fs_group == o.fs_group &&
          host_ipc == o.host_ipc &&
          host_network == o.host_network &&
          host_pid == o.host_pid &&
          host_ports == o.host_ports &&
          privileged == o.privileged &&
          read_only_root_filesystem == o.read_only_root_filesystem &&
          required_drop_capabilities == o.required_drop_capabilities &&
          run_as_user == o.run_as_user &&
          se_linux == o.se_linux &&
          supplemental_groups == o.supplemental_groups &&
          volumes == o.volumes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_privilege_escalation, allowed_capabilities, allowed_host_paths, default_add_capabilities, default_allow_privilege_escalation, fs_group, host_ipc, host_network, host_pid, host_ports, privileged, read_only_root_filesystem, required_drop_capabilities, run_as_user, se_linux, supplemental_groups, volumes].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Kubernetes.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
