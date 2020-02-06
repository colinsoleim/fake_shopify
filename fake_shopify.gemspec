require_relative "lib/fake_shopify/version"

Gem::Specification.new do |spec|
  spec.name          = "fake_shopify"
  spec.version       = FakeShopify::VERSION
  spec.authors       = ["colinsoleim"]
  spec.email         = ["soleimc@gmail.com"]
  spec.summary       = "An unofficial implementation of the Shopify API service for testing purposes."
  spec.homepage      = "https://github.com/colinsoleim/fake_shopify"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files = Dir["{lib}/**/*"] + ["Rakefile", "README.md"]

  spec.add_dependency "capybara"
  spec.add_dependency "rake"
  spec.add_dependency "sinatra"
  spec.add_dependency "webmock"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "shopify_api"
  spec.add_development_dependency "simplecov"
end
