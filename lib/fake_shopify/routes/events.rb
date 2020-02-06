module FakeShopify
  class StubApp < Sinatra::Base
    #  Event API Endpoints
    get "/admin/api/:api_version/events.json" do
      json_response 200, fixture(params[:api_version], "events/events/index")
    end
    # Retrieves a list of events
    get "/admin/api/:api_version/events/count.json" do
      json_response 200, fixture(params[:api_version], "events/events/count")
    end
    # Retrieves a count of events
    get "/admin/api/:api_version/events/:event_id.json" do
      json_response 200, fixture(params[:api_version], "events/events/show")
    end
    # Retrieves a single event

    # Webhook API Endpoints
    get "/admin/api/:api_version/webhooks.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/index")
    end
    # Receive a list of all Webhooks
    get "/admin/api/:api_version/webhooks/count.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/count")
    end
    # Receive a count of all Webhooks
    get "/admin/api/:api_version/webhooks/:webhook_id.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/show")
    end
    # Receive a single Webhook
    post "/admin/api/:api_version/webhooks.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/create")
    end
    # Create a new Webhook
    put "/admin/api/:api_version/webhooks/:webhook_id.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/update")
    end
    # Modify an existing Webhook
    delete "/admin/api/:api_version/webhooks/:webhook_id.json" do
      json_response 200, fixture(params[:api_version], "events/webhooks/destroy")
    end
    # Remove an existing Webhook
  end
end
