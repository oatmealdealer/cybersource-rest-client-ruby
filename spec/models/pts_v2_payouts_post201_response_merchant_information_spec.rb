=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::PtsV2PayoutsPost201ResponseMerchantInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PtsV2PayoutsPost201ResponseMerchantInformation' do
  before do
    # run before each test
    @instance = CyberSource::PtsV2PayoutsPost201ResponseMerchantInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PtsV2PayoutsPost201ResponseMerchantInformation' do
    it 'should create an instance of PtsV2PayoutsPost201ResponseMerchantInformation' do
      expect(@instance).to be_instance_of(CyberSource::PtsV2PayoutsPost201ResponseMerchantInformation)
    end
  end
  describe 'test attribute "merchant_descriptor"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
