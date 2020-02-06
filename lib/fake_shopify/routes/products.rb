module FakeShopify
  class StubApp < Sinatra::Base
    # Product Image API Endpoints
    get "/admin/api/:api_version/products/:product_id/images.json" do
      json_response 200, fixture(params[:api_version], "products/images/index")
    end
    # Receive a list of all Product Images
    get "/admin/api/:api_version/products/:product_id/images/count.json" do
      json_response 200, fixture(params[:api_version], "products/images/count")
    end
    # Receive a count of all Product Images
    get "/admin/api/:api_version/products/:product_id/images/:image_id.json" do
      json_response 200, fixture(params[:api_version], "products/images/show")
    end
    # Receive a single Product Image
    post "/admin/api/:api_version/products/:product_id/images.json" do
      json_response 200, fixture(params[:api_version], "products/images/create")
    end
    # Create a new Product Image
    put "/admin/api/:api_version/products/:product_id/images/:image_id.json" do
      json_response 200, fixture(params[:api_version], "products/images/update")
    end
    # Modify an existing Product Image
    delete "/admin/api/:api_version/products/:product_id/images/:image_id.json" do
      json_response 200, fixture(params[:api_version], "products/images/destroy")
    end
    # Remove an existing Product Image

    # CustomCollection API Endpoints

    get "/admin/api/:api_version/custom_collections.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/index")
    end
    # Retrieves a list of custom collections
    get "/admin/api/:api_version/custom_collections/count.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/count")
    end
    # Retrieves a count of custom collections
    get "/admin/api/:api_version/custom_collections/:custom_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/show")
    end
    # Retrieves a single custom collection
    post "/admin/api/:api_version/custom_collections.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/create")
    end
    # Creates a custom collection
    put "/admin/api/:api_version/custom_collections/:custom_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/update")
    end
    # Updates an existing custom collection
    delete "/admin/api/:api_version/custom_collections/:custom_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/custom_collections/destroy")
    end
    # deletes a custom collection

    # Product Variant API Endpoints

    get "/admin/api/:api_version/products/:product_id/variants.json" do
      json_response 200, fixture(params[:api_version], "products/variants/index")
    end
    # Retrieves a list of product variants
    get "/admin/api/:api_version/products/:product_id/variants/count.json" do
      json_response 200, fixture(params[:api_version], "products/variants/count")
    end
    # Receive a count of all Product Variants
    get "/admin/api/:api_version/variants/:variant_id.json" do
      json_response 200, fixture(params[:api_version], "products/variants/show")
    end
    # Receive a single Product Variant
    post "/admin/api/:api_version/products/:product_id/variants.json" do
      json_response 200, fixture(params[:api_version], "products/variants/create")
    end
    # Create a new Product Variant
    put "/admin/api/:api_version/variants/:variant_id.json" do
      json_response 200, fixture(params[:api_version], "products/variants/update")
    end
    # Modify an existing Product Variant
    delete "/admin/api/:api_version/products/:product_id/variants/:variant_id.json" do
      json_response 200, fixture(params[:api_version], "products/variants/destroy")
    end
    # Remove an existing Product Variant

    # Product API Endpoints

    get "/admin/api/:api_version/products.json" do
      json_response 200, fixture(params[:api_version], "products/products/index")
    end
    # Retrieves a list of products
    get "/admin/api/:api_version/products/count.json" do
      json_response 200, fixture(params[:api_version], "products/products/count")
    end
    # Retrieves a count of products
    get "/admin/api/:api_version/products/:product_id.json" do
      json_response 200, fixture(params[:api_version], "products/products/show")
    end
    # Retrieves a single product
    post "/admin/api/:api_version/products.json" do
      json_response 200, fixture(params[:api_version], "products/products/create")
    end
    # Creates a new product
    put "/admin/api/:api_version/products/:product_id.json" do
      json_response 200, fixture(params[:api_version], "products/products/update")
    end
    # Updates a product
    delete "/admin/api/:api_version/products/:product_id.json" do
      json_response 200, fixture(params[:api_version], "products/products/destroy")
    end
    # deletes a product

    # Collection API Endpoints
    # TODO: Check API endpoints here
    get "/admin/api/:api_version/collections/:collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/collections/show")
    end

    get "/admin/api/:api_version/collections/:collection_id/products.json" do
      json_response 200, fixture(params[:api_version], "products/collections/products")
    end

    # Collect API Endpoints
    post "/admin/api/:api_version/collects.json" do
      json_response 200, fixture(params[:api_version], "products/collects/index")
    end
    # Adds a product to a custom collection
    delete "/admin/api/:api_version/collects/:collect_id.json" do
      json_response 200, fixture(params[:api_version], "products/collects/destroy")
    end
    # Removes a product from a collection
    get "/admin/api/:api_version/collects.json" do
      json_response 200, fixture(params[:api_version], "products/collects/index")
    end
    # Retrieves a list of collects
    get "/admin/api/:api_version/collects/count.json" do
      json_response 200, fixture(params[:api_version], "products/collects/count")
    end
    # Retrieves a count of collects
    get "/admin/api/:api_version/collects/:collect_id.json" do
      json_response 200, fixture(params[:api_version], "products/collects/show")
    end
    # Retrieves a specific collect by its ID

    # SmartCollection API Endpoints
    get "/admin/api/:api_version/smart_collections.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/index")
    end
    # Retrieves a list of smart collections
    get "/admin/api/:api_version/smart_collections/count.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/count")
    end
    # Retrieves a count of smart collections
    get "/admin/api/:api_version/smart_collections/:smart_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/show")
    end
    # Retrieves a single smart collection
    post "/admin/api/:api_version/smart_collections.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/create")
    end
    # Creates a smart collection
    put "/admin/api/:api_version/smart_collections/:smart_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/update")
    end
    # Updates an existing smart collection
    put "/admin/api/:api_version/smart_collections/:smart_collection_id/order.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/order")
    end
    # Updates the ordering type of products in a smart collection
    delete "/admin/api/:api_version/smart_collections/:smart_collection_id.json" do
      json_response 200, fixture(params[:api_version], "products/smart_collections/destroy")
    end
    # Removes a smart collection
  end
end
