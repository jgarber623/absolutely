# frozen_string_literal: true

require_relative 'lib/absolutely/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6', '< 4'

  spec.name          = 'absolutely'
  spec.version       = Absolutely::VERSION
  spec.authors       = ['Jason Garber']
  spec.email         = ['jason@sixtwothree.org']

  spec.summary       = 'Convert relative paths to absolute URIs.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/jgarber623/absolutely'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*'].reject { |f| File.directory?(f) }
  spec.files        += %w[LICENSE CHANGELOG.md CONTRIBUTING.md README.md]
  spec.files        += %w[absolutely.gemspec]

  spec.require_paths = ['lib']

  spec.metadata = {
    'bug_tracker_uri' => "#{spec.homepage}/issues",
    'changelog_uri' => "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md",
    'rubygems_mfa_required' => 'true'
  }

  spec.add_runtime_dependency 'addressable', '~> 2.8'
end
