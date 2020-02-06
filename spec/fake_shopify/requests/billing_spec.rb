require "spec_helper"

describe "Billing Router" do
  include Rack::Test::Methods

  BILLING_TESTS = {
    "get /admin/api/2019-04/recurring_application_charges.json" => {
      route: "/admin/api/2019-04/recurring_application_charges.json",
      method: :get,
    },
    "get /admin/api/2019-04/recurring_application_charges/455696195.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195.json",
      method: :get,
    },
    "post /admin/api/2019-04/recurring_application_charges.json" => {
      route: "/admin/api/2019-04/recurring_application_charges.json",
      method: :post,
    },
    "post /admin/api/2019-04/recurring_application_charges/455696195/activate.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195/activate.json",
      method: :post,
    },
    "put /admin/api/2019-04/recurring_application_charges/455696195/customize.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195/customize.json",
      method: :put,
    },
    "delete /admin/api/2019-04/recurring_application_charges/455696195.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195.json",
      method: :delete,
    },
    "post /admin/api/2019-04/application_charges.json" => {
      route: "/admin/api/2019-04/application_charges.json",
      method: :post,
    },
    "get /admin/api/2019-04/application_charges/:application_charge_id.json" => {
      route: "/admin/api/2019-04/application_charges/:application_charge_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/application_charges.json" => {
      route: "/admin/api/2019-04/application_charges.json",
      method: :get,
    },
    "post /admin/api/2019-04/application_charges/:application_charge_id/activate.json" => {
      route: "/admin/api/2019-04/application_charges/:application_charge_id/activate.json",
      method: :post,
    },
    "post /admin/api/2019-04/recurring_application_charges/455696195/usage_charges.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195/usage_charges.json",
      method: :post,
    },
    "get /admin/api/2019-04/recurring_application_charges/455696195/usage_charges/:usage_charge_id.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195/usage_charges/:usage_charge_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/recurring_application_charges/455696195/usage_charges.json" => {
      route: "/admin/api/2019-04/recurring_application_charges/455696195/usage_charges.json",
      method: :get,
    },
    "post /admin/api/2019-04/application_credits.json" => {
      route: "/admin/api/2019-04/application_credits.json",
      method: :post,
    },
    "get /admin/api/2019-04/application_credits/:application_credit_id.json" => {
      route: "/admin/api/2019-04/application_credits/:application_credit_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/application_credits.json" => {
      route: "/admin/api/2019-04/application_credits.json",
      method: :get,
    },
  }.freeze

  BILLING_TESTS.each_pair do |name, action|
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
