require 'spec_helper'

describe FakeShopify::StubApp do
  describe "GET /shop" do
    it "returns a Shopify shop" do
      shop = ShopifyAPI::Shop.current

      expect(shop.name).to eq("Apple Computers")
    end
  end

  describe "GET /products" do
    it "returns a Shopify shop" do
      products = ShopifyAPI::Product.all

      expect(products[0].title).to eq("IPod Nano - 8GB")
    end
  end
end
