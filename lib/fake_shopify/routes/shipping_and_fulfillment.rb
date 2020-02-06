module FakeShopify
  class StubApp < Sinatra::Base
    # CarrierService API Endpoints
    post "/admin/api/:api_version/carrier_services.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/carrier_services/create")
    end
    # Creates a carrier service
    put "/admin/api/:api_version/carrier_services/:carrier_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/carrier_services/update")
    end
    # Updates a carrier service
    get "/admin/api/:api_version/carrier_services.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/carrier_services/index")
    end
    # Retrieves a list of carrier services
    get "/admin/api/:api_version/carrier_services/:carrier_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/carrier_services/show")
    end
    # Retrieves a single carrier service
    delete "/admin/api/:api_version/carrier_services/:carrier_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/carrier_services/destroy")
    end
    # deletes a carrier service

    # Fulfillment API Endpoints
    get "/admin/api/:api_version/orders/:order_id/fulfillments.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/index")
    end
    # Retrieves fulfillments associated with an order
    get "/admin/api/:api_version/orders/:order_id/fulfillments/count.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/count")
    end
    # Retrieves a count of fulfillments associated with a specific order
    get "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/show")
    end
    # Receive a single Fulfillment
    post "/admin/api/:api_version/orders/:order_id/fulfillments.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/create")
    end
    # Create a new Fulfillment
    put "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/update")
    end
    # Modify an existing Fulfillment
    post "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/complete.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/create")
    end
    # Complete a fulfillment
    post "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/open.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/open")
    end
    # Transition a fulfillment from pending to open.
    post "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/cancel.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillments/cancel")
    end
    # Cancel a fulfillment

    # AssignedFulfillmentOrder API Endpoints
    get "/admin/api/:api_version/assigned_fulfillment_orders.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/assigned_fulfillment_orders/index")
    end

    # FulfillmentService API Endpoints
    get "/admin/api/:api_version/fulfillment_services.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_services/index")
    end
    # Receive a list of all FulfillmentServices
    post "/admin/api/:api_version/fulfillment_services.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_services/create")
    end
    # Create a new FulfillmentService
    get "/admin/api/:api_version/fulfillment_services/:fulfillment_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_services/show")
    end
    # Receive a single FulfillmentService
    put "/admin/api/:api_version/fulfillment_services/:fulfillment_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_services/update")
    end
    # Modify an existing FulfillmentService
    delete "/admin/api/:api_version/fulfillment_services/:fulfillment_service_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_services/destroy")
    end
    # Remove an existing FulfillmentService

    # FulfillmentOrder API Endpoints
    get "/admin/api/:api_version/orders/:order_id/fulfillment_orders.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_orders/index")
    end
    # Retrieves a list of fulfillment orders for a specific order
    get "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_orders/show")
    end
    # Retrieves a specific fulfillment order
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/cancel.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_orders/cancel")
    end
    # Cancel a fulfillment order
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/close.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_orders/close")
    end
    # Marks a fulfillment order as incomplete
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/move.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_orders/move")
    end
    # Moves a fulfillment order to a new location

    # FulfillmentRequest API Endpoints
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/fulfillment_request.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_request/create")
    end
    # Sends a fulfillment request
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/fulfillment_request/accept.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_request/accept")
    end
    # Accepts a fulfillment request
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/fulfillment_request/reject.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/fulfillment_request/reject")
    end
    # Rejects a fulfillment request

    # FulfillmentEvent API Endpoints
    get "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/events.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/events/index")
    end
    # Retrieves a list of fulfillment events for a specific fulfillment
    get "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/events/show")
    end
    # Retrieves a specific fulfillment event
    post "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/events.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/events/create")
    end
    # Creates a fulfillment event
    delete "/admin/api/:api_version/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/events/destroy")
    end
    # deletes a fulfillment event

    # LocationsForMove API Endpoints
    get "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/locations_for_move.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/locations_for_move/index")
    end
    # Retrieves a list of locations that a fulfillment order can potentially move to.

    # CancellationRequest API Endpoints
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/cancellation_request.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/cancellation_request/create")
    end
    # Sends a cancellation request
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/cancellation_request/accept.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/cancellation_request/accept")
    end
    # Accepts a cancellation request
    post "/admin/api/:api_version/fulfillment_orders/:fulfillment_order_id/cancellation_request/reject.json" do
      json_response 200, fixture(params[:api_version], "shipping_and_fulfillment/cancellation_request/reject")
    end
    # Rejects a cancellation request
  end
end
