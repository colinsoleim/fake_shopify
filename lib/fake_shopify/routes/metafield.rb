module FakeShopify
  class StubApp < Sinatra::Base
    # Metafield API Endpoints
    get "/admin/api/:api_version/metafields.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/index")
    end
    # Retrieves a list of metafields that belong to a Product Image resource
    get "/admin/api/:api_version/metafields/count.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/count")
    end
    # Retrieves a count of a resource"s metafields
    get "/admin/api/:api_version/metafields/:metafield_id.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/show")
    end
    # Retrieves a single metafield from a resource by its ID
    post "/admin/api/:api_version/metafields.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/create")
    end
    # Creates a new metafield for a resource
    put "/admin/api/:api_version/metafields/:metafield_id.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/update")
    end
    # Updates a metafield
    delete "/admin/api/:api_version/metafields/:metafield_id.json" do
      json_response 200, fixture(params[:api_version], "metafield/metafields/destroy")
    end
    # Deletes a metafield by its ID
  end
end
