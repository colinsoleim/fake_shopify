require 'simplecov'
SimpleCov.start

require 'fake_shopify'
require 'pry'
require 'rspec'
require 'shopify_api'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before :each do
    FakeShopify.stub_shopify
  end

  config.order = 'random'
end

# Activate Shopify API
ShopifyAPI::Base.api_version = '2019-04'
session = ShopifyAPI::Session.new(domain: "domain", token: "randomtoken", api_version: "2019-04")
ShopifyAPI::Base.activate_session(session)

# Do not announce that capybara is starting puma
Capybara.server = :puma, { Silent: true }
