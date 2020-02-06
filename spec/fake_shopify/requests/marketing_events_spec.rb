require "spec_helper"

describe "Marketing Events Router" do
  include Rack::Test::Methods

  MARKETING_EVENTS_TESTS = {
    "get /admin/api/2019-04/marketing_events.json" => {
      route: "/admin/api/2019-04/marketing_events.json",
      method: :get,
    },
    "get /admin/api/2019-04/marketing_events/count.json" => {
      route: "/admin/api/2019-04/marketing_events/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/marketing_events/:marketing_event_id.json" => {
      route: "/admin/api/2019-04/marketing_events/:marketing_event_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/marketing_events.json" => {
      route: "/admin/api/2019-04/marketing_events.json",
      method: :post,
    },
    "put /admin/api/2019-04/marketing_events/:marketing_event_id.json" => {
      route: "/admin/api/2019-04/marketing_events/:marketing_event_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/marketing_events/:marketing_event_id.json" => {
      route: "/admin/api/2019-04/marketing_events/:marketing_event_id.json",
      method: :delete,
    },
    "post /admin/api/2019-04/marketing_events/:marketing_event_id/engagements.json" => {
      route: "/admin/api/2019-04/marketing_events/:marketing_event_id/engagements.json",
      method: :post,
    },
  }.freeze

  MARKETING_EVENTS_TESTS.each_pair do |name, action|
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
