require "spec_helper"

describe "Analytics Router" do
  include Rack::Test::Methods

  ANALYTICS_TESTS = {
    "get /admin/api/2019-04/reports.json" => { route: "/admin/api/2019-04/reports.json", method: :get },
    "get /admin/api/2019-04/reports/517154478.json" => { route: "/admin/api/2019-04/reports/517154478.json", method: :get },
    "post /admin/api/2019-04/reports.json" => { route: "/admin/api/2019-04/reports.json", method: :post },
    "put /admin/api/2019-04/reports/517154478.json" => { route: "/admin/api/2019-04/reports/517154478.json", method: :put },
    "delete /admin/api/2019-04/reports/517154478.json" => { route: "/admin/api/2019-04/reports/517154478.json", method: :delete },
  }.freeze

  ANALYTICS_TESTS.each_pair do |name, action|
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
