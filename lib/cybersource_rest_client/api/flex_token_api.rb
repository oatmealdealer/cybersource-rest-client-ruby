=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class FlexTokenApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Flex Tokenize card
    # Returns a token representing the supplied card details. The token replaces card data and can be used as the Subscription ID in the CyberSource Simple Order API or SCMP API. This is an unauthenticated call that you should initiate from your customer’s device or browser.
    # @param [Hash] opts the optional parameters
    # @option opts [TokenizeRequest] :tokenize_request 
    # @return [FlexV1TokensPost200Response]
    def tokenize(opts = {})
      data, status_code, headers = tokenize_with_http_info(opts)
      return data, status_code, headers
    end

    # Flex Tokenize card
    # Returns a token representing the supplied card details. The token replaces card data and can be used as the Subscription ID in the CyberSource Simple Order API or SCMP API. This is an unauthenticated call that you should initiate from your customer’s device or browser.
    # @param [Hash] opts the optional parameters
    # @option opts [TokenizeRequest] :tokenize_request 
    # @return [Array<(FlexV1TokensPost200Response, Fixnum, Hash)>] FlexV1TokensPost200Response data, response status code and response headers
    def tokenize_with_http_info(opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: FlexTokenApi.tokenize ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # resource path
      local_var_path = 'flex/v1/tokens/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'tokenize_request'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FlexV1TokensPost200Response')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: FlexTokenApi#tokenize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
