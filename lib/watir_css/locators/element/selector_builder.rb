module WatirCss
  module Locators
    class Element
      class SelectorBuilder < Watir::Locators::Element::SelectorBuilder

        def css_builder
          @css_builder ||= CSS.new
        end

        private

        def build_wd_selector(selectors)
          unless selectors.values.any? { |e| e.is_a? Regexp }
            build_css(selectors) || build_xpath(selectors)
          end
        end

        def build_css(selectors)
          css_builder.build(selectors)
        end

      end
    end
  end
end
