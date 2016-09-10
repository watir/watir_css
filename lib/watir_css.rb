require 'watir-webdriver'

require 'watir_css/locators/element/selector_builder/css'
require 'watir_css/version'

Watir.locator_namespace = Css::Locators

WatirCss::Locators::Element::Locator = Watir::Locators::Element::Locator
