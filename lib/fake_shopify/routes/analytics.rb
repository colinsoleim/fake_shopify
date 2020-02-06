module FakeShopify
  class StubApp < Sinatra::Base
    # Report API Endpoints
    get "/admin/api/:api_version/reports.json" do
      json_response 200, fixture(params[:api_version], "analytics/report/index")
    end

    get "/admin/api/:api_version/reports/:report_id.json" do
      json_response 200, fixture(params[:api_version], "analytics/report/show")
    end

    post "/admin/api/:api_version/reports.json" do
      json_response 200, fixture(params[:api_version], "analytics/report/create")
    end

    put "/admin/api/:api_version/reports/:report_id.json" do
      json_response 200, fixture(params[:api_version], "analytics/report/update")
    end

    delete "/admin/api/:api_version/reports/:report_id.json" do
      json_response 200, fixture(params[:api_version], "analytics/report/destroy")
    end
  end
end
