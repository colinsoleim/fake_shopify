require "spec_helper"

describe "Metafields Router" do
  include Rack::Test::Methods

  METAFIELDS_TESTS = {
    "get /admin/api/2019-04/metafields.json" => {
      route: "/admin/api/2019-04/metafields.json",
      method: :get,
    },
    "get /admin/api/2019-04/metafields/count.json" => {
      route: "/admin/api/2019-04/metafields/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/metafields/:metafield_id.json" => {
      route: "/admin/api/2019-04/metafields/:metafield_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/metafields.json" => {
      route: "/admin/api/2019-04/metafields.json",
      method: :post,
    },
    "put /admin/api/2019-04/metafields/:metafield_id.json" => {
      route: "/admin/api/2019-04/metafields/:metafield_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/metafields/:metafield_id.json" => {
      route: "/admin/api/2019-04/metafields/:metafield_id.json",
      method: :delete,
    },
  }.freeze

  METAFIELDS_TESTS.each_pair do |name, action|
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
