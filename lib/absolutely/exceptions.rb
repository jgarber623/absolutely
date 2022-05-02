# frozen_string_literal: true

module Absolutely
  class AbsolutelyError < StandardError; end

  class ArgumentError < AbsolutelyError; end

  class InvalidURIError < AbsolutelyError; end
end
