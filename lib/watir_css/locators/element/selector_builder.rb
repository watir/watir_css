module WatirCss
  module Locators
    class Element
      class SelectorBuilder < Watir::Locators::Element::SelectorBuilder

        def css_builder
          @css_builder ||= CSS.new
        end

        private

        def build_wd_selector(selectors)
          return if selectors.values.any? { |e| e.is_a? Regexp }
          build_css(selectors) || build_xpath(selectors)
        end

        def build_css(selectors)
          return if selectors.values.any? { |e| e.is_a?(Symbol) || e.is_a?(TrueClass) || e.is_a?(FalseClass)}
          css_builder.build(selectors)
        end

      end
    end
  end
end
