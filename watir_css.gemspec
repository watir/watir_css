# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "watir_css"
  spec.version       = "0.2.0"
  spec.authors       = ["Titus Fortner"]
  spec.email         = ["titusfortner@gmail.com"]

  spec.summary       = %q{CSS locator engine for Watir}
  spec.description = <<-DESCRIPTION_MESSAGE
By default Watir converts calls into XPath; this gem will replace XPath calls
with CSS calls where possible.
DESCRIPTION_MESSAGE

  spec.homepage      = "https://github.com/watir/watir_css"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webdrivers", "~> 3.0"

  spec.add_runtime_dependency "watir", "~> 6.8", ">= 6.8.1"
end
