=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # Fee Funding Section
  class ReportingV3PurchaseRefundDetailsGet200ResponseFeeAndFundingDetails
    # An unique identification number assigned by CyberSource to identify the submitted request.
    attr_accessor :request_id

    # interchange Per Item Fee
    attr_accessor :interchange_per_item_fee

    # interchange Description
    attr_accessor :interchange_description

    # interchange Percentage
    attr_accessor :interchange_percentage

    # interchange Percentage Amount
    attr_accessor :interchange_percentage_amount

    # Discount Percentage
    attr_accessor :discount_percentage

    # Discount Amount
    attr_accessor :discount_amount

    # Discount Per Item Fee
    attr_accessor :discount_per_item_fee

    # Total Fee
    attr_accessor :total_fee

    # Fee Currency
    attr_accessor :fee_currency

    # Dues Assessments
    attr_accessor :dues_assessments

    # Funding Amount
    attr_accessor :funding_amount

    # Funding Currency (ISO 4217)
    attr_accessor :funding_currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'request_id' => :'requestId',
        :'interchange_per_item_fee' => :'interchangePerItemFee',
        :'interchange_description' => :'interchangeDescription',
        :'interchange_percentage' => :'interchangePercentage',
        :'interchange_percentage_amount' => :'interchangePercentageAmount',
        :'discount_percentage' => :'discountPercentage',
        :'discount_amount' => :'discountAmount',
        :'discount_per_item_fee' => :'discountPerItemFee',
        :'total_fee' => :'totalFee',
        :'fee_currency' => :'feeCurrency',
        :'dues_assessments' => :'duesAssessments',
        :'funding_amount' => :'fundingAmount',
        :'funding_currency' => :'fundingCurrency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'request_id' => :'String',
        :'interchange_per_item_fee' => :'String',
        :'interchange_description' => :'String',
        :'interchange_percentage' => :'String',
        :'interchange_percentage_amount' => :'String',
        :'discount_percentage' => :'String',
        :'discount_amount' => :'String',
        :'discount_per_item_fee' => :'String',
        :'total_fee' => :'String',
        :'fee_currency' => :'String',
        :'dues_assessments' => :'String',
        :'funding_amount' => :'String',
        :'funding_currency' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'requestId')
        self.request_id = attributes[:'requestId']
      end

      if attributes.has_key?(:'interchangePerItemFee')
        self.interchange_per_item_fee = attributes[:'interchangePerItemFee']
      end

      if attributes.has_key?(:'interchangeDescription')
        self.interchange_description = attributes[:'interchangeDescription']
      end

      if attributes.has_key?(:'interchangePercentage')
        self.interchange_percentage = attributes[:'interchangePercentage']
      end

      if attributes.has_key?(:'interchangePercentageAmount')
        self.interchange_percentage_amount = attributes[:'interchangePercentageAmount']
      end

      if attributes.has_key?(:'discountPercentage')
        self.discount_percentage = attributes[:'discountPercentage']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'discountPerItemFee')
        self.discount_per_item_fee = attributes[:'discountPerItemFee']
      end

      if attributes.has_key?(:'totalFee')
        self.total_fee = attributes[:'totalFee']
      end

      if attributes.has_key?(:'feeCurrency')
        self.fee_currency = attributes[:'feeCurrency']
      end

      if attributes.has_key?(:'duesAssessments')
        self.dues_assessments = attributes[:'duesAssessments']
      end

      if attributes.has_key?(:'fundingAmount')
        self.funding_amount = attributes[:'fundingAmount']
      end

      if attributes.has_key?(:'fundingCurrency')
        self.funding_currency = attributes[:'fundingCurrency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] request_id Value to be assigned
    def request_id=(request_id)
      @request_id = request_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          request_id == o.request_id &&
          interchange_per_item_fee == o.interchange_per_item_fee &&
          interchange_description == o.interchange_description &&
          interchange_percentage == o.interchange_percentage &&
          interchange_percentage_amount == o.interchange_percentage_amount &&
          discount_percentage == o.discount_percentage &&
          discount_amount == o.discount_amount &&
          discount_per_item_fee == o.discount_per_item_fee &&
          total_fee == o.total_fee &&
          fee_currency == o.fee_currency &&
          dues_assessments == o.dues_assessments &&
          funding_amount == o.funding_amount &&
          funding_currency == o.funding_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [request_id, interchange_per_item_fee, interchange_description, interchange_percentage, interchange_percentage_amount, discount_percentage, discount_amount, discount_per_item_fee, total_fee, fee_currency, dues_assessments, funding_amount, funding_currency].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = CyberSource.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
