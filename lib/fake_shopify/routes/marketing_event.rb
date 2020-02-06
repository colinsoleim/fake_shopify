module FakeShopify
  class StubApp < Sinatra::Base
    # MarketingEvent API Endpoints
    get "/admin/api/:api_version/marketing_events.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/index")
    end
    # Retrieves a list of all marketing events
    get "/admin/api/:api_version/marketing_events/count.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/count")
    end
    # Retrieves a count of all marketing events
    get "/admin/api/:api_version/marketing_events/:marketing_event_id.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/show")
    end
    # Retrieves a single marketing event
    post "/admin/api/:api_version/marketing_events.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/create")
    end
    # Creates a marketing event
    put "/admin/api/:api_version/marketing_events/:marketing_event_id.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/update")
    end
    # Updates a marketing event
    delete "/admin/api/:api_version/marketing_events/:marketing_event_id.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/destroy")
    end
    # Deletes a marketing event
    post "/admin/api/:api_version/marketing_events/:marketing_event_id/engagements.json" do
      json_response 200, fixture(params[:api_version], "marketing_event/marketing_events/engagements")
    end
    # Creates marketing engagements on a marketing event
  end
end
