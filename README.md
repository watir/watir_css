# WatirCss

CSS-based locator engine for [watir-webdriver](https://github.com/watir/watir-webdriver).

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

Require after watir-webdriver, the rest should just work.

```ruby
require 'watir-webdriver'
require 'watir_css'
```

## Comparison with default watir-webdriver locator

By default Watir converts calls into XPath; this gem will replace XPath calls
with CSS calls where possible.

This functionality used to be present directly in watir-webdriver. During
the transition to Watir 6.0, a hook was included in the repository to 
allow for alternate locator strategies.

This gem replaces:

```ruby
Watir.prefer_css
```

## Limitations

Some watir-webdriver locators cannot be reimplemented with watir_css. In such cases,
it fall backs to watir-webdriver, so you should be able to migrate pretty easily.

## Development

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Specs

Watir_css uses [watirspec](https://github.com/watir/watirspec) for testing, so
you should first fetch it:

```bash
$ git submodule init && git submodule update
```

Now, you can run all specs:

```bash
$ bundle exec rake spec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/titusfortner/watir_css.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.
