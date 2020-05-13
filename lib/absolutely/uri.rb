module Absolutely
  class URI
    attr_reader :base, :relative

    # Create an Absolutely::URI from a base URI and a relative path.
    #
    # @param base [String] an absolute URI used to resolve relative path
    # @param relative [String] a relative path
    # @raise [Absolutely::ArgumentError]
    # @raise [Absolutely::InvalidURIError]
    #
    # @example
    #   uri = Absolutely::URI.new(base: 'https://example.com', relative: '/foo')
    #   puts uri.to_abs
    #   #=> "https://example.com/foo"
    def initialize(base:, relative:)
      raise ArgumentError, "base must be a String (given #{base.class.name})" unless base.is_a?(String)
      raise ArgumentError, "relative must be a String (given #{relative.class.name})" unless relative.is_a?(String)

      @base = base
      @relative = relative

      base_uri
      relative_uri

      raise ArgumentError, 'base must be an absolute URL (e.g. https://example.com)' unless base_uri.absolute?
    rescue Addressable::URI::InvalidURIError => exception
      raise InvalidURIError, exception
    end

    # @return [Addressable::URI]
    def base_uri
      @base_uri ||= Addressable::URI.parse(base)
    end

    # @return [String]
    def inspect
      format("#<#{self.class.name}:%#0x base: #{base.inspect}, relative: #{relative.inspect}>", object_id)
    end

    # @return [Addressable::URI]
    def relative_uri
      @relative_uri ||= Addressable::URI.parse(relative)
    end

    # Convert a relative path to an absolute URI.
    #
    # @return [String]
    def to_abs
      return relative_uri.normalize.to_s if relative_uri.absolute?

      base_uri.path = base_uri.normalized_path

      (base_uri + relative_uri).to_s
    end
  end
end
