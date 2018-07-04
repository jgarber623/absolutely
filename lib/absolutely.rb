require 'addressable/uri'

require 'absolutely/version'
require 'absolutely/error'
require 'absolutely/uri'

module Absolutely
  class << self
    def to_absolute_uri(base:, relative:)
      uri(base: base, relative: relative).to_absolute_uri
    end

    def uri(base:, relative:)
      URI.new(base: base, relative: relative)
    end
  end
end
