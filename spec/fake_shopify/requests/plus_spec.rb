require "spec_helper"

describe "Plus Router" do
  include Rack::Test::Methods

  PLUS_TESTS = {
    "get /admin/api/2019-04/gift_cards.json" => {
      route: "/admin/api/2019-04/gift_cards.json",
      method: :get,
    },
    "get /admin/api/2019-04/gift_cards/:gift_card_id.json" => {
      route: "/admin/api/2019-04/gift_cards/:gift_card_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/gift_cards/count.json" => {
      route: "/admin/api/2019-04/gift_cards/count.json",
      method: :get,
    },
    "post /admin/api/2019-04/gift_cards.json" => {
      route: "/admin/api/2019-04/gift_cards.json",
      method: :post,
    },
    "put /admin/api/2019-04/gift_cards/:gift_card_id.json" => {
      route: "/admin/api/2019-04/gift_cards/:gift_card_id.json",
      method: :put,
    },
    "post /admin/api/2019-04/gift_cards/:gift_card_id/disable.json" => {
      route: "/admin/api/2019-04/gift_cards/:gift_card_id/disable.json",
      method: :post,
    },
    "get /admin/api/2019-04/gift_cards/search.json?query=mnop" => {
      route: "/admin/api/2019-04/gift_cards/search.json?query=mnop",
      method: :get,
    },
    "get /admin/api/2019-04/users.json" => {
      route: "/admin/api/2019-04/users.json",
      method: :get,
    },
    "get /admin/api/2019-04/users/:user_id.json" => {
      route: "/admin/api/2019-04/users/:user_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/users/current.json" => {
      route: "/admin/api/2019-04/users/current.json",
      method: :get,
    },
  }.freeze

  PLUS_TESTS.each_pair do |name, action|
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
