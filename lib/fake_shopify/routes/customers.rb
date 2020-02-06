module FakeShopify
  class StubApp < Sinatra::Base
    # Customer API Endpoints
    get "/admin/api/:api_version/customers.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/index")
    end
    get "/admin/api/:api_version/customers/count.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/count")
    end
    # Retrieves a list of customers
    get "/admin/api/:api_version/customers/search.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/search")
    end
    # Searches for customers that match a supplied query
    get "/admin/api/:api_version/customers/:customer_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/show")
    end
    # Retrieves a single customer
    post "/admin/api/:api_version/customers.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/create")
    end
    # Creates a customer
    put "/admin/api/:api_version/customers/:customer_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/update")
    end
    # Updates a customer
    post "/admin/api/:api_version/customers/:customer_id/account_activation_url.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/account_activation_url")
    end
    # Creates an account activation URL for a customer
    post "/admin/api/:api_version/customers/:customer_id/send_invite.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/send_invite")
    end
    # Sends an account invite to a customer
    delete "/admin/api/:api_version/customers/:customer_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/destroy")
    end
    # deletes a customer.
    get "/admin/api/:api_version/customers/:customer_id/orders.json" do
      json_response 200, fixture(params[:api_version], "customers/customer/index")
    end
    # Retrieves all orders belonging to a customer

    # Customer Address API Endpoints
    get "/admin/api/:api_version/customers/:customer_id/addresses.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/index")
    end
    # Retrieves a list of addresses for a customer
    get "/admin/api/:api_version/customers/:customer_id/addresses/:address_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/show")
    end
    # Retrieves details for a single customer address
    post "/admin/api/:api_version/customers/:customer_id/addresses.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/create")
    end

    put "/admin/api/:api_version/customers/:customer_id/addresses/set.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/set")
    end
    # Creates a new address for a customer
    put "/admin/api/:api_version/customers/:customer_id/addresses/:address_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/update")
    end
    # Updates an existing customer address
    delete "/admin/api/:api_version/customers/:customer_id/addresses/:address_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/destroy")
    end

    # Performs bulk operations for multiple customer addresses
    put "/admin/api/:api_version/customers/:customer_id/addresses/:address_id/default.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_address/default")
    end
    # Sets the default address for a customer

    # CustomerSavedSearch API Endpoints
    get "/admin/api/:api_version/customer_saved_searches.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/index")
    end
    # Retrieves a list of customer saved searches
    get "/admin/api/:api_version/customer_saved_searches/count.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/count")
    end
    # Retrieves a count of all customer saved searches
    get "/admin/api/:api_version/customer_saved_searches/:customer_saved_search_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/show")
    end
    # Retrieves a single customer saved search
    get "/admin/api/:api_version/customer_saved_searches/:customer_saved_search_id/customers.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/index")
    end
    # Retrieves all customers returned by a customer saved search
    post "/admin/api/:api_version/customer_saved_searches.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/create")
    end
    # Creates a customer saved search
    put "/admin/api/:api_version/customer_saved_searches/:customer_saved_search_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/update")
    end
    # Updates a customer saved search
    delete "/admin/api/:api_version/customer_saved_searches/:customer_saved_search_id.json" do
      json_response 200, fixture(params[:api_version], "customers/customer_saved_search/destroy")
    end
    # deletes a customer saved search
  end
end
