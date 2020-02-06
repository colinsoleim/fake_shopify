require "capybara"
require "capybara/server"
require "fake_shopify/configuration"
require "fake_shopify/initializers/webmock"
require "fake_shopify/stub_app"

module FakeShopify
  extend Configuration

  def self.stub_shopify
    stub_request(:any, /domain.myshopify.com/).to_rack(FakeShopify::StubApp)
  end
end
