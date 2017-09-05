require 'watir_css'
require 'webdrivers'
require 'watirspec'

WatirSpec.implementation do |watirspec|
  opts = {}

  watirspec.name = :watir_css
  watirspec.browser_class = Watir::Browser
  watirspec.browser_args = [:chrome, opts]
end

WatirSpec.run!
