require "spec_helper"

describe "Tender Transactons Router" do
  include Rack::Test::Methods

  TENDER_TRANSACTIONS_TESTS = {
    "get /admin/api/2019-04/tender_transactions.json" => {
      route: "/admin/api/2019-04/tender_transactions.json",
      method: :get,
    },
  }.freeze

  TENDER_TRANSACTIONS_TESTS.each_pair do |name, action|
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
