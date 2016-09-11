require 'watir'

require 'watir_css/locators/element/locator'
require 'watir_css/locators/element/selector_builder'
require 'watir_css/locators/element/selector_builder/css'
require 'watir_css/locators/element/validator'
require 'watir_css/version'

Watir.locator_namespace = WatirCss::Locators

WatirCss::Locators::Button = Watir::Locators::Button
WatirCss::Locators::Cell      = Watir::Locators::Cell
WatirCss::Locators::Row       = Watir::Locators::Row
WatirCss::Locators::TextArea  = Watir::Locators::TextArea
WatirCss::Locators::TextField = Watir::Locators::TextField
