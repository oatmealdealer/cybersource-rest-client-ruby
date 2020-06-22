=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsPost201Response
    # An unique identification number assigned by CyberSource to identify each Search request.
    attr_accessor :search_id

    # save or not save.
    attr_accessor :save

    # The description for this field is not available. 
    attr_accessor :name

    # Time Zone in ISO format.
    attr_accessor :timezone

    # transaction search query string.
    attr_accessor :query

    # offset.
    attr_accessor :offset

    # Limit on number of results.
    attr_accessor :limit

    # A comma separated list of the following form - fieldName1 asc or desc, fieldName2 asc or desc, etc.
    attr_accessor :sort

    # Results for this page, this could be below the limit.
    attr_accessor :count

    # Total number of results.
    attr_accessor :total_count

    # The status of the submitted transaction.
    attr_accessor :status

    # Time of request in UTC. Format: `YYYY-MM-DDThh:mm:ssZ` **Example** `2016-08-11T22:47:57Z` equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The `T` separates the date and the time. The `Z` indicates UTC.  Returned by authorization service.  #### PIN debit Time when the PIN debit credit, PIN debit purchase or PIN debit reversal was requested.  Returned by PIN debit credit, PIN debit purchase or PIN debit reversal. 
    attr_accessor :submit_time_utc

    attr_accessor :_embedded

    attr_accessor :_links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'search_id' => :'searchId',
        :'save' => :'save',
        :'name' => :'name',
        :'timezone' => :'timezone',
        :'query' => :'query',
        :'offset' => :'offset',
        :'limit' => :'limit',
        :'sort' => :'sort',
        :'count' => :'count',
        :'total_count' => :'totalCount',
        :'status' => :'status',
        :'submit_time_utc' => :'submitTimeUtc',
        :'_embedded' => :'_embedded',
        :'_links' => :'_links'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'search_id' => :'String',
        :'save' => :'BOOLEAN',
        :'name' => :'String',
        :'timezone' => :'String',
        :'query' => :'String',
        :'offset' => :'Integer',
        :'limit' => :'Integer',
        :'sort' => :'String',
        :'count' => :'Integer',
        :'total_count' => :'Integer',
        :'status' => :'String',
        :'submit_time_utc' => :'String',
        :'_embedded' => :'TssV2TransactionsPost201ResponseEmbedded',
        :'_links' => :'PtsV2IncrementalAuthorizationPatch201ResponseLinks'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'searchId')
        self.search_id = attributes[:'searchId']
      end

      if attributes.has_key?(:'save')
        self.save = attributes[:'save']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.has_key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.has_key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'totalCount')
        self.total_count = attributes[:'totalCount']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'submitTimeUtc')
        self.submit_time_utc = attributes[:'submitTimeUtc']
      end

      if attributes.has_key?(:'_embedded')
        self._embedded = attributes[:'_embedded']
      end

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@search_id.nil? && @search_id.to_s.length > 60
        invalid_properties.push('invalid value for "search_id", the character length must be smaller than or equal to 60.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@search_id.nil? && @search_id.to_s.length > 60
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] search_id Value to be assigned
    def search_id=(search_id)
      if !search_id.nil? && search_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "search_id", the character length must be smaller than or equal to 60.'
      end

      @search_id = search_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          search_id == o.search_id &&
          save == o.save &&
          name == o.name &&
          timezone == o.timezone &&
          query == o.query &&
          offset == o.offset &&
          limit == o.limit &&
          sort == o.sort &&
          count == o.count &&
          total_count == o.total_count &&
          status == o.status &&
          submit_time_utc == o.submit_time_utc &&
          _embedded == o._embedded &&
          _links == o._links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [search_id, save, name, timezone, query, offset, limit, sort, count, total_count, status, submit_time_utc, _embedded, _links].hash
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
