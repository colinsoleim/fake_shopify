module FakeShopify
  class StubApp < Sinatra::Base
    # Country API endpoints
    get "/admin/api/:api_version/countries.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/index")
    end
    # Receive a list of all Countries
    get "/admin/api/:api_version/countries/count.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/count")
    end
    # Retrieves a count of countries
    get "/admin/api/:api_version/countries/:country_id.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/show")
    end
    # Retrieves a specific county
    post "/admin/api/:api_version/countries.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/create")
    end
    # Creates a country
    put "/admin/api/:api_version/countries/:country_id.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/update")
    end
    # Updates an existing country
    delete "/admin/api/:api_version/countries/:country_id.json" do
      json_response 200, fixture(params[:api_version], "store_properties/countries/destroy")
    end
    # Remove an existing Country

    # Province API Endpoitns
    get "/admin/api/:api_version/countries/:country_id/provinces.json" do
      json_response 200, fixture(params[:api_version], "store_properties/provinces/index")
    end
    # Retrieves a list of provinces for a country
    get "/admin/api/:api_version/countries/:country_id/provinces/count.json" do
      json_response 200, fixture(params[:api_version], "store_properties/provinces/count")
    end
    # Retrieves a count of provinces for a country
    get "/admin/api/:api_version/countries/:country_id/provinces/:province_id.json" do
      json_response 200, fixture(params[:api_version], "store_properties/provinces/show")
    end
    # Retrieves a single province for a country
    put "/admin/api/:api_version/countries/:country_id/provinces/:province_id.json" do
      json_response 200, fixture(params[:api_version], "store_properties/provinces/update")
    end
    # Updates an existing province for a country

    # Shop API Endpoitns
    get "/admin/api/:api_version/shop.json" do
      json_response 200, fixture(params[:api_version], "store_properties/shop/show")
    end
    # Retrieves the shop"s configuration

    # Currency API Endpoitns
    get "/admin/api/:api_version/currencies.json" do
      json_response 200, fixture(params[:api_version], "store_properties/currencies/index")
    end
    # Retrieves a list of currencies enabled on a shop

    # Policy API Endpoitns
    get "/admin/api/:api_version/policies.json" do
      json_response 200, fixture(params[:api_version], "store_properties/policies/index")
    end
    # Retrieves a list of the shop"s policies
  end
end
