=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.13.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "cgi"

module Kubernetes
  class ApisApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # get available API versions
    # @param [Hash] opts the optional parameters
    # @return [V1APIGroupList]
    def get_api_versions(opts = {})
      data, _status_code, _headers = get_api_versions_with_http_info(opts)
      return data
    end

    # 
    # get available API versions
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1APIGroupList, Fixnum, Hash)>] V1APIGroupList data, response status code and response headers
    def get_api_versions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApisApi.get_api_versions ..."
      end
      # resource path
      local_var_path = "/apis/"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1APIGroupList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApisApi#get_api_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
