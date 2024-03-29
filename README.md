# Absolutely

**A Ruby gem for converting relative paths to absolute URIs.**

[![Gem](https://img.shields.io/gem/v/absolutely.svg?logo=rubygems&style=for-the-badge)](https://rubygems.org/gems/absolutely)
[![Downloads](https://img.shields.io/gem/dt/absolutely.svg?logo=rubygems&style=for-the-badge)](https://rubygems.org/gems/absolutely)
[![Build](https://img.shields.io/github/actions/workflow/status/jgarber623/absolutely/ci.yml?branch=main&logo=github&style=for-the-badge)](https://github.com/jgarber623/absolutely/actions/workflows/ci.yml)
[![Maintainability](https://img.shields.io/codeclimate/maintainability/jgarber623/absolutely.svg?logo=code-climate&style=for-the-badge)](https://codeclimate.com/github/jgarber623/absolutely)
[![Coverage](https://img.shields.io/codeclimate/c/jgarber623/absolutely.svg?logo=code-climate&style=for-the-badge)](https://codeclimate.com/github/jgarber623/absolutely/code)

## Key Features

- Uses the [Addressable](https://github.com/sporkmonger/addressable) Ruby gem for improved URI parsing.
- Supports Ruby 2.6 and newer.

## Getting Started

Before installing and using Absolutely, you'll want to have [Ruby](https://www.ruby-lang.org) 2.6 (or newer) installed. It's recommended that you use a Ruby version managment tool like [rbenv](https://github.com/rbenv/rbenv), [chruby](https://github.com/postmodern/chruby), or [rvm](https://github.com/rvm/rvm).

Absolutely is developed using Ruby 2.6.10 and is additionally tested against Ruby 2.7, 3.0, and 3.1 using [GitHub Actions](https://github.com/jgarber623/absolutely/actions).

## Installation

If you're using [Bundler](https://bundler.io), add Absolutely to your project's `Gemfile`:

```ruby
source 'https://rubygems.org'

gem 'absolutely'
```

…and hop over to your command prompt and run…

```sh
$ bundle install
```

## Usage

### Basic Usage

With Absolutely added to your project's `Gemfile` and installed, you may convert relative URIs to absolute URIs by doing:

```ruby
require 'absolutely'

uri = Absolutely.uri(base: 'https://example.com', relative: '/foo').to_abs

puts uri # => String: 'https://example.com/foo'
```

This example combines the supplied `base` value (`https://example.com`) and combines it with the supplied `relative` value (`/foo`), returning the string `https://example.com/foo`.

You may obtain the same results using this slightly shorter version:

```ruby
require 'absolutely'

uri = Absolutely.to_abs(base: 'https://example.com', relative: '/foo')

puts uri # => 'https://example.com/foo'
```

Note that if the value passed as `relative` is determined to be an absolute URI, Absolutely will return the value of `relative` regardless of the value passed as `base`:

```ruby
require 'absolutely'

uri = Absolutely.to_abs(base: 'https://example.com', relative: 'https://example.com/foo')

puts uri # => 'https://example.com/foo'
```

### Advanced Usage

Should the need arise, you may work directly with the `Absolutely::URI` class:

```ruby
require 'absolutely'

uri = Absolutely::URI.new(base: 'https://example.com', relative: '/foo')

puts uri              # => #<Absolutely::URI>

puts uri.base         # => 'https://example.com'
puts uri.relative     # => '/foo'

puts uri.base_uri     # => #<Addressable::URI URI:https://example.com>
puts uri.relative_uri # => #<Addressable::URI URI:/foo>

puts uri.to_abs       # => 'https://example.com/foo'
```

For convenience, the `base_uri` and `relative_uri` methods return instances of the `Addressable::URI` class. For more on this class' available methods, see [the Addressable Ruby gem's source code](https://github.com/sporkmonger/addressable).

## Contributing

Interested in helping improve Absolutely? Awesome! Your help is greatly appreciated. See [CONTRIBUTING.md](https://github.com/jgarber623/absolutely/blob/main/CONTRIBUTING.md) for details.

## Acknowledgments

Absolutely is written and maintained by [Jason Garber](https://sixtwothree.org).

## License

Absolutely is freely available under the [MIT License](https://opensource.org/licenses/MIT). Use it, learn from it, fork it, improve it, change it, tailor it to your needs.
