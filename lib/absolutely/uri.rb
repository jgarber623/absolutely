module Absolutely
  class URI
    attr_accessor :base, :relative

    def initialize(base:, relative:)
      raise ArgumentError, "base must be a String (given #{base.class.name})" unless base.is_a?(String)
      raise ArgumentError, "relative must be a String (given #{relative.class.name})" unless relative.is_a?(String)

      @base = base
      @relative = relative

      raise ArgumentError, 'base must be an absolute URI (e.g. https://example.com)' unless base_uri.absolute?

      relative_uri
    end

    def base_uri
      @base_uri ||= Addressable::URI.parse(base)
    rescue Addressable::URI::InvalidURIError => error
      raise InvalidURIError, error
    end

    def relative_uri
      @relative_uri ||= Addressable::URI.parse(relative)
    rescue Addressable::URI::InvalidURIError => error
      raise InvalidURIError, error
    end

    def to_absolute_uri
      return relative_uri.to_s if relative_uri.absolute?

      (base_uri + relative_uri).to_s
    end
  end
end
