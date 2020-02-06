require "spec_helper"

describe "Sales Channel Router" do
  include Rack::Test::Methods

  SALES_CHANNEL_TESTS = {
    # "get /admin/api/2020-01/collection_listings.json" => {
    #   route: "/admin/api/2020-01/collection_listings.json",
    #   method: :get,
    # },
    # "get /admin/api/2020-01/collection_listings/:collection_listing_id/product_ids.json" => {
    #   route: "/admin/api/2020-01/collection_listings/:collection_listing_id/product_ids.json",
    #   method: :get,
    # },
    # "get /admin/api/2020-01/collection_listings/:collection_listing_id.json" => {
    #   route: "/admin/api/2020-01/collection_listings/:collection_listing_id.json",
    #   method: :get,
    # },
    # "put /admin/api/2020-01/collection_listings/:collection_listing_id.json" => {
    #   route: "/admin/api/2020-01/collection_listings/:collection_listing_id.json",
    #   method: :put,
    # },
    # "delete /admin/api/2020-01/collection_listings/:collection_listing_id.json" => {
    #   route: "/admin/api/2020-01/collection_listings/:collection_listing_id.json",
    #   method: :delete,
    # },
    "post /admin/api/2019-04/checkouts/:token/payments.json" => {
      route: "/admin/api/2019-04/checkouts/:token/payments.json",
      method: :post,
    },
    "get /admin/api/2019-04/checkouts/:token/payments.json" => {
      route: "/admin/api/2019-04/checkouts/:token/payments.json",
      method: :get,
    },
    "get /admin/api/2019-04/checkouts/:token/payments/:payment_id.json" => {
      route: "/admin/api/2019-04/checkouts/:token/payments/:payment_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/checkouts/:token/payments/count.json" => {
      route: "/admin/api/2019-04/checkouts/:token/payments/count.json",
      method: :get,
    },
    # "post /admin/api/2020-01/checkouts.json" => {
    #   route: "/admin/api/2020-01/checkouts.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/checkouts/:token/complete.json" => {
    #   route: "/admin/api/2020-01/checkouts/:token/complete.json",
    #   method: :post,
    # },
    # "get /admin/api/2020-01/checkouts/:token.json" => {
    #   route: "/admin/api/2020-01/checkouts/:token.json",
    #   method: :get,
    # },
    # "put /admin/api/2020-01/checkouts/:token.json" => {
    #   route: "/admin/api/2020-01/checkouts/:token.json",
    #   method: :put,
    # },
    # "get /admin/api/2020-01/checkouts/:token/shipping_rates.json" => {
    #   route: "/admin/api/2020-01/checkouts/:token/shipping_rates.json",
    #   method: :get,
    # },
    "post /admin/api/2019-04/resource_feedback.json" => {
      route: "/admin/api/2019-04/resource_feedback.json",
      method: :post,
    },
    "get /admin/api/2019-04/resource_feedback.json" => {
      route: "/admin/api/2019-04/resource_feedback.json",
      method: :get,
    },
    "get /admin/api/2019-04/product_listings.json" => {
      route: "/admin/api/2019-04/product_listings.json",
      method: :get,
    },
    "get /admin/api/2019-04/product_listings/product_ids.json" => {
      route: "/admin/api/2019-04/product_listings/product_ids.json",
      method: :get,
    },
    "get /admin/api/2019-04/product_listings/count.json" => {
      route: "/admin/api/2019-04/product_listings/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/product_listings/:product_listing_id.json" => {
      route: "/admin/api/2019-04/product_listings/:product_listing_id.json",
      method: :get,
    },
    "put /admin/api/2019-04/product_listings/:product_listing_id.json" => {
      route: "/admin/api/2019-04/product_listings/:product_listing_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/product_listings/:product_listing_id.json" => {
      route: "/admin/api/2019-04/product_listings/:product_listing_id.json",
      method: :delete,
    },
  }.freeze

  SALES_CHANNEL_TESTS.each_pair do |name, action|
    describe name do
      it "returns valid json" do
        send action[:method], action[:route]
        expect { JSON.parse(last_response.body) }.not_to raise_error
      end
    end
  end

  def app
    FakeShopify::StubApp.new
  end
end
