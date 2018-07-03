module Absolutely
  class Uri
    attr_accessor :base, :base_uri, :relative, :relative_uri

    def initialize(base:, relative:)
      raise ArgumentError, "base must be a String (given #{base.class.name})" unless base.is_a?(String)
      raise ArgumentError, "relative must be a String (given #{base.class.name})" unless relative.is_a?(String)

      @base = base
      @relative = relative

      @base_uri = Addressable::URI.parse(base)
      @relative_uri = Addressable::URI.parse(relative)
    rescue Addressable::URI::InvalidURIError => error
      raise InvalidURIError, error
    end
  end
end
