require 'watir_css'
require 'webdrivers'
require 'watirspec'

WatirSpec.implementation do |watirspec|
  opts = {}

  watirspec.name = :watir_css
  watirspec.browser_class = Watir::Browser
  watirspec.browser_args = [:chrome, opts]

  watirspec.guard_proc = lambda do |watirspec_guards|
    watir_css_guards = %i[chrome watir_css relaxed_locate]
    watirspec_guards.any? { |guard| watir_css_guards.include?(guard) }
  end
end

WatirSpec.run!
