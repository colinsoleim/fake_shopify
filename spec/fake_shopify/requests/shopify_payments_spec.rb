require "spec_helper"

describe "Shopify Payments Router" do
  include Rack::Test::Methods

  SHOPIFY_PAYMENTS_TESTS = {
    "get /admin/api/2019-04/shopify_payments/payouts.json" => {
      route: "/admin/api/2019-04/shopify_payments/payouts.json",
      method: :get,
    },
    "get /admin/api/2019-04/shopify_payments/payouts/:payout_id.json" => {
      route: "/admin/api/2019-04/shopify_payments/payouts/:payout_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/shopify_payments/disputes.json" => {
      route: "/admin/api/2019-04/shopify_payments/disputes.json",
      method: :get,
    },
    "get /admin/api/2019-04/shopify_payments/disputes/:dispute_id.json" => {
      route: "/admin/api/2019-04/shopify_payments/disputes/:dispute_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/shopify_payments/balance.json" => {
      route: "/admin/api/2019-04/shopify_payments/balance.json",
      method: :get,
    },
    "get /admin/api/2019-04/shopify_payments/balance/transactions.json?payout_id=623721858" => {
      route: "/admin/api/2019-04/shopify_payments/balance/transactions.json?payout_id=623721858",
      method: :get,
    },
  }.freeze

  SHOPIFY_PAYMENTS_TESTS.each_pair do |name, action|
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
