=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponseOrderInformationLineItems
    # Type of product. This value is used to determine the category that the product is in: electronic, handling, physical, service, or shipping. The default value is **default**.  For a payment, when you set this field to a value other than default or any of the values related to shipping and handling, below fields _quantity_, _productName_, and _productSKU_ are required. 
    attr_accessor :product_code

    # For PAYMENT and CAPTURE API, this field is required when above _productCode_ is not **default** or one of the values related to shipping and handling. 
    attr_accessor :product_name

    # Identification code for the product. For PAYMENT and CAPTURE API, this field is required when above _productCode_ is not **default** or one of the values related to shipping and/or handling. 
    attr_accessor :product_sku

    # Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. The tax amount field is additive.  The following example uses a two-exponent currency such as USD:  1. You include each line item in your request.     - 1st line item has `amount=10.00`, `quantity=1`, and `taxAmount=0.80`     - 2nd line item has `amount=20.00`, `quantity=1`, and `taxAmount=1.60` 2. The total amount authorized will be 32.40, not 30.00 with 2.40 of tax included.  This field is frequently used for Level II and Level III transactions.  For details, see `tax_amount` field description in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :tax_amount

    # For a payment or capture, this field is required when _productCode_ is not **default** or one of the values related to shipping and handling. 
    attr_accessor :quantity

    # Per-item price of the product. This value cannot be negative. You can include a decimal point (.), but you cannot include any other special characters. CyberSource truncates the amount to the correct number of decimal places.  For processor-specific information, see the amount field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :unit_price

    # The description for this field is not available.
    attr_accessor :fulfillment_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_code' => :'productCode',
        :'product_name' => :'productName',
        :'product_sku' => :'productSku',
        :'tax_amount' => :'taxAmount',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'fulfillment_type' => :'fulfillmentType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'product_code' => :'String',
        :'product_name' => :'String',
        :'product_sku' => :'String',
        :'tax_amount' => :'String',
        :'quantity' => :'Integer',
        :'unit_price' => :'String',
        :'fulfillment_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productSku')
        self.product_sku = attributes[:'productSku']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'fulfillmentType')
        self.fulfillment_type = attributes[:'fulfillmentType']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@product_code.nil? && @product_code.to_s.length > 255
        invalid_properties.push('invalid value for "product_code", the character length must be smaller than or equal to 255.')
      end

      if !@product_name.nil? && @product_name.to_s.length > 255
        invalid_properties.push('invalid value for "product_name", the character length must be smaller than or equal to 255.')
      end

      if !@product_sku.nil? && @product_sku.to_s.length > 255
        invalid_properties.push('invalid value for "product_sku", the character length must be smaller than or equal to 255.')
      end

      if !@tax_amount.nil? && @tax_amount.to_s.length > 15
        invalid_properties.push('invalid value for "tax_amount", the character length must be smaller than or equal to 15.')
      end

      if !@quantity.nil? && @quantity > 999999999
        invalid_properties.push('invalid value for "quantity", must be smaller than or equal to 999999999.')
      end

      if !@quantity.nil? && @quantity < 1
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 1.')
      end

      if !@unit_price.nil? && @unit_price.to_s.length > 15
        invalid_properties.push('invalid value for "unit_price", the character length must be smaller than or equal to 15.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@product_code.nil? && @product_code.to_s.length > 255
      return false if !@product_name.nil? && @product_name.to_s.length > 255
      return false if !@product_sku.nil? && @product_sku.to_s.length > 255
      return false if !@tax_amount.nil? && @tax_amount.to_s.length > 15
      return false if !@quantity.nil? && @quantity > 999999999
      return false if !@quantity.nil? && @quantity < 1
      return false if !@unit_price.nil? && @unit_price.to_s.length > 15
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] product_code Value to be assigned
    def product_code=(product_code)
      if !product_code.nil? && product_code.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_code", the character length must be smaller than or equal to 255.'
      end

      @product_code = product_code
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      if !product_name.nil? && product_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_name", the character length must be smaller than or equal to 255.'
      end

      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] product_sku Value to be assigned
    def product_sku=(product_sku)
      if !product_sku.nil? && product_sku.to_s.length > 255
        fail ArgumentError, 'invalid value for "product_sku", the character length must be smaller than or equal to 255.'
      end

      @product_sku = product_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      if !tax_amount.nil? && tax_amount.to_s.length > 15
        fail ArgumentError, 'invalid value for "tax_amount", the character length must be smaller than or equal to 15.'
      end

      @tax_amount = tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if !quantity.nil? && quantity > 999999999
        fail ArgumentError, 'invalid value for "quantity", must be smaller than or equal to 999999999.'
      end

      if !quantity.nil? && quantity < 1
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 1.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_price Value to be assigned
    def unit_price=(unit_price)
      if !unit_price.nil? && unit_price.to_s.length > 15
        fail ArgumentError, 'invalid value for "unit_price", the character length must be smaller than or equal to 15.'
      end

      @unit_price = unit_price
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_code == o.product_code &&
          product_name == o.product_name &&
          product_sku == o.product_sku &&
          tax_amount == o.tax_amount &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          fulfillment_type == o.fulfillment_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [product_code, product_name, product_sku, tax_amount, quantity, unit_price, fulfillment_type].hash
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
