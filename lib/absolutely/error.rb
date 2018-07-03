module Absolutely
  class Error < StandardError; end

  class ArgumentError < Error; end

  class InvalidURIError < Error; end
end
