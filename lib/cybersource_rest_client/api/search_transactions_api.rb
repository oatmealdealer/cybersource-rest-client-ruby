=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class SearchTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Create a search request
    # Create a search request. 
    # @param create_search_request 
    # @param [Hash] opts the optional parameters
    # @return [TssV2TransactionsPost201Response]
    def create_search(create_search_request, opts = {})
      data, status_code, headers = create_search_with_http_info(create_search_request, opts)
      return data, status_code, headers
    end

    # Create a search request
    # Create a search request. 
    # @param create_search_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TssV2TransactionsPost201Response, Fixnum, Hash)>] TssV2TransactionsPost201Response data, response status code and response headers
    def create_search_with_http_info(create_search_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: SearchTransactionsApi.create_search ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'create_search_request' is set
      if @api_client.config.client_side_validation && create_search_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_search_request' when calling SearchTransactionsApi.create_search"
      end
      # resource path
      local_var_path = 'tss/v2/searches'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_search_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TssV2TransactionsPost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: SearchTransactionsApi#create_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Get Search results
    # Include the Search ID in the GET request to retrieve the search results.
    # @param id Search ID.
    # @param [Hash] opts the optional parameters
    # @return [TssV2TransactionsPost201Response]
    def get_search(id, opts = {})
      data, status_code, headers = get_search_with_http_info(id, opts)
      return data, status_code, headers
    end

    # Get Search results
    # Include the Search ID in the GET request to retrieve the search results.
    # @param id Search ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TssV2TransactionsPost201Response, Fixnum, Hash)>] TssV2TransactionsPost201Response data, response status code and response headers
    def get_search_with_http_info(id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: SearchTransactionsApi.get_search ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SearchTransactionsApi.get_search"
      end
      # resource path
      local_var_path = 'tss/v2/searches/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TssV2TransactionsPost201Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: SearchTransactionsApi#get_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
