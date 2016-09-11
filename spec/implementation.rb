require 'spec_helper'

include Watir

WatirSpec.implementation do |watirspec|
  watirspec.name = :watir_css
  watirspec.browser_class = Watir::Browser
  watirspec.browser_args = [:chrome, {desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome}]
  watirspec.guard_proc = lambda do |args|
    args.include?(:chrome)
  end
end
