require "spec_helper"

describe "Store Properties Router" do
  include Rack::Test::Methods

  STORE_PROPERTIES_TESTS = {
    "get /admin/api/2019-04/countries.json" => {
      route: "/admin/api/2019-04/countries.json",
      method: :get,
    },
    "get /admin/api/2019-04/countries/count.json" => {
      route: "/admin/api/2019-04/countries/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/countries/:country_id.json" => {
      route: "/admin/api/2019-04/countries/:country_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/countries.json" => {
      route: "/admin/api/2019-04/countries.json",
      method: :post,
    },
    "put /admin/api/2019-04/countries/:country_id.json" => {
      route: "/admin/api/2019-04/countries/:country_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/countries/:country_id.json" => {
      route: "/admin/api/2019-04/countries/:country_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/countries/:country_id/provinces.json" => {
      route: "/admin/api/2019-04/countries/:country_id/provinces.json",
      method: :get,
    },
    "get /admin/api/2019-04/countries/:country_id/provinces/count.json" => {
      route: "/admin/api/2019-04/countries/:country_id/provinces/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/countries/:country_id/provinces/:province_id.json" => {
      route: "/admin/api/2019-04/countries/:country_id/provinces/:province_id.json",
      method: :get,
    },
    "put /admin/api/2019-04/countries/:country_id/provinces/:province_id.json" => {
      route: "/admin/api/2019-04/countries/:country_id/provinces/:province_id.json",
      method: :put,
    },
    "get /admin/api/2019-04/shop.json" => {
      route: "/admin/api/2019-04/shop.json",
      method: :get,
    },
    "get /admin/api/2019-04/currencies.json" => {
      route: "/admin/api/2019-04/currencies.json",
      method: :get,
    },
    "get /admin/api/2019-04/policies.json" => {
      route: "/admin/api/2019-04/policies.json",
      method: :get,
    },
  }.freeze

  STORE_PROPERTIES_TESTS.each_pair do |name, action|
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
