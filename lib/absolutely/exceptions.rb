module Absolutely
  class AbsolutelyError < StandardError; end

  class ArgumentError < AbsolutelyError; end

  class InvalidURIError < AbsolutelyError; end
end
