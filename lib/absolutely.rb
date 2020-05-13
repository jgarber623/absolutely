require 'addressable/uri'

require 'absolutely/version'
require 'absolutely/exceptions'

require 'absolutely/uri'

module Absolutely
  class << self
    # Convert a relative path to an absolute URI.
    #
    # @param base [String]
    # @param relative [String]
    # @return [String]
    #
    # @example
    #   Absolutely.to_abs(base: 'https://example.com', relative: '/foo')
    #   #=> "https://example.com/foo"
    def to_abs(base:, relative:)
      uri(base: base, relative: relative).to_abs
    end

    alias to_absolute_uri to_abs

    # Create an Absolutely::URI from a base URI and a relative path.
    #
    # @param base [String]
    # @param relative [String]
    # @return [Absolutely::URI]
    #
    #   uri = Absolutely.uri(base: 'https://example.com', relative: '/foo')
    #   puts uri.to_abs
    #   #=> "https://example.com/foo"
    def uri(base:, relative:)
      URI.new(base: base, relative: relative)
    end
  end
end
