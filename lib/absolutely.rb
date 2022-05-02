# frozen_string_literal: true

require 'addressable/uri'

require_relative 'absolutely/version'

require_relative 'absolutely/uri'

module Absolutely
  class AbsolutelyError < StandardError; end
  class ArgumentError < AbsolutelyError; end
  class InvalidURIError < AbsolutelyError; end

  # Convert a relative path to an absolute URI.
  #
  # @param base [String] an absolute URI used to resolve relative path
  # @param relative [String] a relative path
  # @return [String]
  #
  # @example
  #   Absolutely.to_abs(base: 'https://example.com', relative: '/foo')
  #   #=> "https://example.com/foo"
  def self.to_abs(base:, relative:)
    uri(base: base, relative: relative).to_abs
  end

  # Create an Absolutely::URI from a base URI and a relative path.
  #
  # @param base [String] an absolute URI used to resolve relative path
  # @param relative [String] a relative path
  # @return [Absolutely::URI]
  #
  # @example
  #   uri = Absolutely.uri(base: 'https://example.com', relative: '/foo')
  #   puts uri.to_abs
  #   #=> "https://example.com/foo"
  def self.uri(base:, relative:)
    URI.new(base: base, relative: relative)
  end
end
