require "spec_helper"

describe "Inventory Router" do
  include Rack::Test::Methods

  INVENTORY_TESTS = {
    "get /admin/api/2019-04/inventory_levels.json" => {
      route: "/admin/api/2019-04/inventory_levels.json",
      method: :get,
    },
    "post /admin/api/2019-04/inventory_levels/adjust.json" => {
      route: "/admin/api/2019-04/inventory_levels/adjust.json",
      method: :post,
    },
    "delete /admin/api/2019-04/inventory_levels.json" => {
      route: "/admin/api/2019-04/inventory_levels.json",
      method: :delete,
    },
    "post /admin/api/2019-04/inventory_levels/connect.json" => {
      route: "/admin/api/2019-04/inventory_levels/connect.json",
      method: :post,
    },
    "post /admin/api/2019-04/inventory_levels/set.json" => {
      route: "/admin/api/2019-04/inventory_levels/set.json",
      method: :post,
    },
    "get /admin/api/2019-04/locations.json" => {
      route: "/admin/api/2019-04/locations.json",
      method: :get,
    },
    "get /admin/api/2019-04/locations/:location_id.json" => {
      route: "/admin/api/2019-04/locations/:location_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/locations/count.json" => {
      route: "/admin/api/2019-04/locations/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/locations/:location_id/inventory_levels.json" => {
      route: "/admin/api/2019-04/locations/:location_id/inventory_levels.json",
      method: :get,
    },
    "get /admin/api/2019-04/inventory_items.json" => {
      route: "/admin/api/2019-04/inventory_items.json",
      method: :get,
    },
    "get /admin/api/2019-04/inventory_items/:inventory_item_id.json" => {
      route: "/admin/api/2019-04/inventory_items/:inventory_item_id.json",
      method: :get,
    },
    "put /admin/api/2019-04/inventory_items/:inventory_item_id.json" => {
      route: "/admin/api/2019-04/inventory_items/:inventory_item_id.json",
      method: :put,
    },
  }.freeze

  INVENTORY_TESTS.each_pair do |name, action|
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
