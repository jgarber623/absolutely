require 'addressable/uri'

require 'absolutely/version'
require 'absolutely/exceptions'

require 'absolutely/uri'

module Absolutely
  class << self
    def to_abs(base:, relative:)
      uri(base: base, relative: relative).to_abs
    end
    alias_method :to_absolute_uri, :to_abs

    def uri(base:, relative:)
      URI.new(base: base, relative: relative)
    end
  end
end
