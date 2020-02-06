module FakeShopify
  class StubApp < Sinatra::Base
    # CollectionListing API Endpoints
    get "/admin/api/:api_version/collection_listings.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/collection_listings/index")
    end
    # Retrieve collection listings that are published to your app
    get "/admin/api/:api_version/collection_listings/:collection_listing_id/product_ids.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/collection_listings/product_ids")
    end
    # Retrieve product_ids that are published to a collection_id
    get "/admin/api/:api_version/collection_listings/:collection_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/collection_listings/show")
    end
    # Retrieve a specific collection listing that is published to your app
    put "/admin/api/:api_version/collection_listings/:collection_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/collection_listings/create")
    end
    # Create a collection listing to publish a collection to your app
    delete "/admin/api/:api_version/collection_listings/:collection_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/collection_listings/destroy")
    end
    # delete a collection listing to unpublish a collection from your app

    # Payment API Endpoints
    post "/admin/api/:api_version/checkouts/:token/payments.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/payments/create")
    end
    # Creates a new payment
    get "/admin/api/:api_version/checkouts/:token/payments.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/payments/index")
    end
    # Retrieves a list of payments on a particular checkout
    get "/admin/api/:api_version/checkouts/:token/payments/:payment_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/payments/show")
    end
    # Retrieves a single payment
    get "/admin/api/:api_version/checkouts/:token/payments/count.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/payments/count")
    end
    # Counts the number of payments attempted on a checkout

    # Checkout API Endpoints
    post "/admin/api/:api_version/checkouts.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/checkouts/create")
    end
    # Creates a checkout
    post "/admin/api/:api_version/checkouts/:token/complete.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/checkouts/complete")
    end
    # Completes a checkout
    get "/admin/api/:api_version/checkouts/:token.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/checkouts/show")
    end
    # Retrieves a checkout
    put "/admin/api/:api_version/checkouts/:token.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/checkouts/update")
    end
    # Modifies an existing checkout
    get "/admin/api/:api_version/checkouts/:token/shipping_rates.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/checkouts/shipping_rates")
    end
    # Retrieves a list of shipping rates

    # ResourceFeedback API Endpoints
    post "/admin/api/:api_version/resource_feedback.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/resource_feedback/create")
    end
    # Create a new ResourceFeedback
    get "/admin/api/:api_version/resource_feedback.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/resource_feedback/index")
    end
    # Receive a list of all ResourceFeedbacks

    # ProductListing API Endpoints
    get "/admin/api/:api_version/product_listings.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/index")
    end
    # Retrieve product listings that are published to your app
    get "/admin/api/:api_version/product_listings/product_ids.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/product_ids")
    end
    # Retrieve product_ids that are published to your app
    get "/admin/api/:api_version/product_listings/count.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/count")
    end
    # Retrieve a count of products that are published to your app
    get "/admin/api/:api_version/product_listings/:product_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/show")
    end
    # Retrieve a specific product listing that is published to your app
    put "/admin/api/:api_version/product_listings/:product_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/create")
    end
    # Create a product listing to publish a product to your app
    delete "/admin/api/:api_version/product_listings/:product_listing_id.json" do
      json_response 200, fixture(params[:api_version], "sales_channel/product_listings/destroy")
    end
    # delete a product listing to unpublish a product from your app
  end
end
