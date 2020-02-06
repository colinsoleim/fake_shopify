module FakeShopify
  class StubApp < Sinatra::Base
    # RecurringApplicationCharge API Endpoints
    get "/admin/api/:api_version/recurring_application_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/index")
    end

    get "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/show")
    end

    post "/admin/api/:api_version/recurring_application_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/create")
    end

    post "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id/activate.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/activate")
    end

    put "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id/customize.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/customize")
    end

    delete "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id.json" do
      json_response 200, fixture(params[:api_version], "billing/recurring_application_charges/destroy")
    end

    # ApplicationCharge API Endpoints
    post "/admin/api/:api_version/application_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/application_charge/create")
    end

    get "/admin/api/:api_version/application_charges/:application_charge_id.json" do
      json_response 200, fixture(params[:api_version], "billing/application_charge/show")
    end

    get "/admin/api/:api_version/application_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/application_charge/index")
    end

    post "/admin/api/:api_version/application_charges/:application_charge_id/activate.json" do
      json_response 200, fixture(params[:api_version], "billing/application_charge/activate")
    end

    # UsageCharge API Endpoints
    post "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id/usage_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/usage_charge/create")
    end

    get "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id/usage_charges/:usage_charge_id.json" do
      json_response 200, fixture(params[:api_version], "billing/usage_charge/show")
    end

    get "/admin/api/:api_version/recurring_application_charges/:recurring_application_charge_id/usage_charges.json" do
      json_response 200, fixture(params[:api_version], "billing/usage_charge/index")
    end

    # ApplicationCredit API Endpoints
    post "/admin/api/:api_version/application_credits.json" do
      json_response 200, fixture(params[:api_version], "billing/application_credit/create")
    end

    get "/admin/api/:api_version/application_credits/:application_credit_id.json" do
      json_response 200, fixture(params[:api_version], "billing/application_credit/show")
    end

    get "/admin/api/:api_version/application_credits.json" do
      json_response 200, fixture(params[:api_version], "billing/application_credit/index")
    end
  end
end
