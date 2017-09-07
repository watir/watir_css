# WatirCss

A CSS based locator engine for [watir](https://github.com/watir/watir).

By default Watir translates location approaches into XPath. This gem will replace XPath calls
with CSS calls where possible.

Some locator strategies supported by Watir cannot be reimplemented with watir_css. 
In such cases, it falls back to the XPath implementation in Watir.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'watir_css'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install watir_css
```

## Usage

```ruby
require 'watir_css'
```

## Specs

WatirCss will run watirspecs from Watir project:

```bash
$ bundle exec rake spec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/watir/watir_css.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.
