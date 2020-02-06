require "spec_helper"

describe "Events Router" do
  include Rack::Test::Methods

  EVENTS_TESTS = {
    "get /admin/api/2019-04/events.json" => {
      route: "/admin/api/2019-04/events.json",
      method: :get,
    },
    "get /admin/api/2019-04/events/:event_id.json" => {
      route: "/admin/api/2019-04/events/:event_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/events/count.json" => {
      route: "/admin/api/2019-04/events/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/webhooks.json" => {
      route: "/admin/api/2019-04/webhooks.json",
      method: :get,
    },
    "get /admin/api/2019-04/webhooks/count.json" => {
      route: "/admin/api/2019-04/webhooks/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/webhooks/:webhook_id.json" => {
      route: "/admin/api/2019-04/webhooks/:webhook_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/webhooks.json" => {
      route: "/admin/api/2019-04/webhooks.json",
      method: :post,
    },
    "put /admin/api/2019-04/webhooks/:webhook_id.json" => {
      route: "/admin/api/2019-04/webhooks/:webhook_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/webhooks/:webhook_id.json" => {
      route: "/admin/api/2019-04/webhooks/:webhook_id.json",
      method: :delete,
    },
  }.freeze

  EVENTS_TESTS.each_pair do |name, action|
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
