# frozen_string_literal: true

require 'simplecov'

require 'absolutely'

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

Dir.glob(File.join(Dir.pwd, 'spec', 'support', '**', '*.rb')).sort.each { |f| require f }

RSpec.configure(&:disable_monkey_patching!)
