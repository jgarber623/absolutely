require 'addressable/uri'

require 'absolutely/version'
require 'absolutely/error'
require 'absolutely/uri'

module Absolutely
  def self.uri(base:, relative:)
    Uri.new(base: base, relative: relative)
  end
end
