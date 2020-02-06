module FakeShopify
  class StubApp < Sinatra::Base
    # InventoryLevel API Endpoints
    get "/admin/api/:api_version/inventory_levels.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_levels/index")
    end
    # Retrieves a list of inventory levels
    post "/admin/api/:api_version/inventory_levels/adjust.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_levels/adjust")
    end
    # Adjusts the inventory level of an inventory item at a location
    delete "/admin/api/:api_version/inventory_levels.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_levels/destroy")
    end
    # deletes an inventory level from a location
    post "/admin/api/:api_version/inventory_levels/connect.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_levels/connect")
    end
    # Connects an inventory item to a location
    post "/admin/api/:api_version/inventory_levels/set.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_levels/set")
    end
    # Sets the inventory level for an inventory item at a location

    # Location API Endpoints
    get "/admin/api/:api_version/locations.json" do
      json_response 200, fixture(params[:api_version], "inventory/locations/index")
    end
    # Retrieves a list of locations
    get "/admin/api/:api_version/locations/count.json" do
      json_response 200, fixture(params[:api_version], "inventory/locations/count")
    end
    # Retrieves a count of locations
    get "/admin/api/:api_version/locations/:location_id.json" do
      json_response 200, fixture(params[:api_version], "inventory/locations/show")
    end
    # Retrieves a single location by its ID
    get "/admin/api/:api_version/locations/:location_id/inventory_levels.json" do
      json_response 200, fixture(params[:api_version], "inventory/locations/inventory_levels")
    end
    # Retrieves a list of inventory levels for a location

    # InventoryItem API Endpoints
    get "/admin/api/:api_version/inventory_items.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_items/index")
    end
    # Retrieves a list of inventory items
    get "/admin/api/:api_version/inventory_items/:inventory_item_id.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_items/show")
    end
    # Retrieves a single inventory item by ID
    put "/admin/api/:api_version/inventory_items/:inventory_item_id.json" do
      json_response 200, fixture(params[:api_version], "inventory/inventory_items/update")
    end
    # Updates an existing inventory item
  end
end
