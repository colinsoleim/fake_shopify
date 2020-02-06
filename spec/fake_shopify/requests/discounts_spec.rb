require "spec_helper"

describe "Discounts Router" do
  include Rack::Test::Methods

  DISCOUNTS_TESTS = {
    "post /admin/api/2019-04/price_rules.json" => {
      route: "/admin/api/2019-04/price_rules.json",
      method: :post,
    },
    "put /admin/api/2019-04/price_rules/507328175.json" => {
      route: "/admin/api/2019-04/price_rules/507328175.json",
      method: :put,
    },
    "get /admin/api/2019-04/price_rules.json" => {
      route: "/admin/api/2019-04/price_rules.json",
      method: :get,
    },
    "get /admin/api/2019-04/price_rules/507328175.json" => {
      route: "/admin/api/2019-04/price_rules/507328175.json",
      method: :get,
    },
    "get /admin/api/2019-04/price_rules/count.json" => {
      route: "/admin/api/2019-04/price_rules/count.json",
      method: :get,
    },
    "delete /admin/api/2019-04/price_rules/507328175.json" => {
      route: "/admin/api/2019-04/price_rules/507328175.json",
      method: :delete,
    },
    "post /admin/api/2019-04/price_rules/507328175/discount_codes.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/discount_codes.json",
      method: :post,
    },
    "put /admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json",
      method: :put,
    },
    "get /admin/api/2019-04/price_rules/507328175/discount_codes.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/discount_codes.json",
      method: :get,
    },
    "get /admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/discount_codes/lookup.json" => {
      route: "/admin/api/2019-04/discount_codes/lookup.json",
      method: :get,
    },
    "delete /admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/discount_codes/:discount_code_id.json",
      method: :delete,
    },
    "post /admin/api/2019-04/price_rules/507328175/batch.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/batch.json",
      method: :post,
    },
    "get /admin/api/2019-04/price_rules/507328175/batch/:batch_id.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/batch/:batch_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/price_rules/507328175/batch/:batch_id/discount_codes.json" => {
      route: "/admin/api/2019-04/price_rules/507328175/batch/:batch_id/discount_codes.json",
      method: :get,
    },
  }.freeze

  DISCOUNTS_TESTS.each_pair do |name, action|
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
