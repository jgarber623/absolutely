module Absolutely
  class URI
    attr_reader :base, :base_uri, :relative, :relative_uri

    def initialize(base:, relative:)
      raise ArgumentError, "base must be a String (given #{base.class.name})" unless base.is_a?(String)
      raise ArgumentError, "relative must be a String (given #{relative.class.name})" unless relative.is_a?(String)

      set_instance_vars(base, relative)

      raise ArgumentError, 'base must be an absolute URL (e.g. https://example.com)' unless base_uri.absolute?
    end

    def inspect
      format("#<#{self.class.name}:%#0x>", object_id)
    end

    def to_abs
      return relative_uri.to_s if relative_uri.absolute?

      base_uri.path = base_uri.normalized_path

      (base_uri + relative_uri).to_s
    end
    alias_method :to_absolute_uri, :to_abs

    private

    def set_instance_vars(base, relative)
      @base = base
      @relative = relative

      @base_uri = Addressable::URI.parse(base)
      @relative_uri = Addressable::URI.parse(relative)
    rescue Addressable::URI::InvalidURIError => exception
      raise InvalidURIError, exception
    end
  end
end
