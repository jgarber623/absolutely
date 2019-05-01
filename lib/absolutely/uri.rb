module Absolutely
  class URI
    attr_reader :base, :relative

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

    def base_uri
      @base_uri ||= Addressable::URI.parse(base)
    end

    def relative_uri
      @relative_uri ||= Addressable::URI.parse(relative)
    end

    def to_absolute_uri
      return relative_uri.to_s if relative_uri.absolute?

      base_uri.path = '/' if base_uri.path.empty?

      (base_uri + relative_uri).to_s
    end
  end
end
