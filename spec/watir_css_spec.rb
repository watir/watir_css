require 'watirspec_helper'

describe WatirCss do
  before do
    browser.goto(WatirSpec.url_for("non_control_elements.html"))
  end

  it "returns true if the element exists" do
    xpath_class = Watir::Locators::Element::SelectorBuilder::XPath
    expect_any_instance_of(xpath_class).to_not receive(:build)

    expect(browser.div(id: /header/)).to exist
    expect(browser.div(title: "Header and primary navigation")).to exist
    expect(browser.div(title: /Header and primary navigation/)).to exist
    expect(browser.div(text: /This is a footer\./)).to exist
    expect(browser.div(class: "profile")).to exist
    expect(browser.div(class: /profile/)).to exist
    expect(browser.div(index: 0)).to exist
    expect(browser.div(xpath: "//div[@id='header']")).to exist
  end

end
