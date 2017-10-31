=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # A single application container that you want to run within a pod.
  class V1Container
    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    attr_accessor :args

    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    attr_accessor :command

    # List of environment variables to set in the container. Cannot be updated.
    attr_accessor :env

    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    attr_accessor :env_from

    # Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
    attr_accessor :image

    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images
    attr_accessor :image_pull_policy

    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    attr_accessor :lifecycle

    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    attr_accessor :liveness_probe

    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
    attr_accessor :name

    # List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Cannot be updated.
    attr_accessor :ports

    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    attr_accessor :readiness_probe

    # Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
    attr_accessor :resources

    # Security options the pod should run with. More info: https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://git.k8s.io/community/contributors/design-proposals/security_context.md
    attr_accessor :security_context

    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    attr_accessor :stdin

    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    attr_accessor :stdin_once

    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
    attr_accessor :termination_message_path

    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    attr_accessor :termination_message_policy

    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    attr_accessor :tty

    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    attr_accessor :volume_mounts

    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    attr_accessor :working_dir


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'args' => :'args',
        :'command' => :'command',
        :'env' => :'env',
        :'env_from' => :'envFrom',
        :'image' => :'image',
        :'image_pull_policy' => :'imagePullPolicy',
        :'lifecycle' => :'lifecycle',
        :'liveness_probe' => :'livenessProbe',
        :'name' => :'name',
        :'ports' => :'ports',
        :'readiness_probe' => :'readinessProbe',
        :'resources' => :'resources',
        :'security_context' => :'securityContext',
        :'stdin' => :'stdin',
        :'stdin_once' => :'stdinOnce',
        :'termination_message_path' => :'terminationMessagePath',
        :'termination_message_policy' => :'terminationMessagePolicy',
        :'tty' => :'tty',
        :'volume_mounts' => :'volumeMounts',
        :'working_dir' => :'workingDir'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'args' => :'Array<String>',
        :'command' => :'Array<String>',
        :'env' => :'Array<V1EnvVar>',
        :'env_from' => :'Array<V1EnvFromSource>',
        :'image' => :'String',
        :'image_pull_policy' => :'String',
        :'lifecycle' => :'V1Lifecycle',
        :'liveness_probe' => :'V1Probe',
        :'name' => :'String',
        :'ports' => :'Array<V1ContainerPort>',
        :'readiness_probe' => :'V1Probe',
        :'resources' => :'V1ResourceRequirements',
        :'security_context' => :'V1SecurityContext',
        :'stdin' => :'BOOLEAN',
        :'stdin_once' => :'BOOLEAN',
        :'termination_message_path' => :'String',
        :'termination_message_policy' => :'String',
        :'tty' => :'BOOLEAN',
        :'volume_mounts' => :'Array<V1VolumeMount>',
        :'working_dir' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'args')
        if (value = attributes[:'args']).is_a?(Array)
          self.args = value
        end
      end

      if attributes.has_key?(:'command')
        if (value = attributes[:'command']).is_a?(Array)
          self.command = value
        end
      end

      if attributes.has_key?(:'env')
        if (value = attributes[:'env']).is_a?(Array)
          self.env = value
        end
      end

      if attributes.has_key?(:'envFrom')
        if (value = attributes[:'envFrom']).is_a?(Array)
          self.env_from = value
        end
      end

      if attributes.has_key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.has_key?(:'imagePullPolicy')
        self.image_pull_policy = attributes[:'imagePullPolicy']
      end

      if attributes.has_key?(:'lifecycle')
        self.lifecycle = attributes[:'lifecycle']
      end

      if attributes.has_key?(:'livenessProbe')
        self.liveness_probe = attributes[:'livenessProbe']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'ports')
        if (value = attributes[:'ports']).is_a?(Array)
          self.ports = value
        end
      end

      if attributes.has_key?(:'readinessProbe')
        self.readiness_probe = attributes[:'readinessProbe']
      end

      if attributes.has_key?(:'resources')
        self.resources = attributes[:'resources']
      end

      if attributes.has_key?(:'securityContext')
        self.security_context = attributes[:'securityContext']
      end

      if attributes.has_key?(:'stdin')
        self.stdin = attributes[:'stdin']
      end

      if attributes.has_key?(:'stdinOnce')
        self.stdin_once = attributes[:'stdinOnce']
      end

      if attributes.has_key?(:'terminationMessagePath')
        self.termination_message_path = attributes[:'terminationMessagePath']
      end

      if attributes.has_key?(:'terminationMessagePolicy')
        self.termination_message_policy = attributes[:'terminationMessagePolicy']
      end

      if attributes.has_key?(:'tty')
        self.tty = attributes[:'tty']
      end

      if attributes.has_key?(:'volumeMounts')
        if (value = attributes[:'volumeMounts']).is_a?(Array)
          self.volume_mounts = value
        end
      end

      if attributes.has_key?(:'workingDir')
        self.working_dir = attributes[:'workingDir']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          args == o.args &&
          command == o.command &&
          env == o.env &&
          env_from == o.env_from &&
          image == o.image &&
          image_pull_policy == o.image_pull_policy &&
          lifecycle == o.lifecycle &&
          liveness_probe == o.liveness_probe &&
          name == o.name &&
          ports == o.ports &&
          readiness_probe == o.readiness_probe &&
          resources == o.resources &&
          security_context == o.security_context &&
          stdin == o.stdin &&
          stdin_once == o.stdin_once &&
          termination_message_path == o.termination_message_path &&
          termination_message_policy == o.termination_message_policy &&
          tty == o.tty &&
          volume_mounts == o.volume_mounts &&
          working_dir == o.working_dir
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [args, command, env, env_from, image, image_pull_policy, lifecycle, liveness_probe, name, ports, readiness_probe, resources, security_context, stdin, stdin_once, termination_message_path, termination_message_policy, tty, volume_mounts, working_dir].hash
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
