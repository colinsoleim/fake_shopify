module FakeShopify
  class StubApp < Sinatra::Base
    # Abandoned checkouts API Endpoints
    get "/admin/api/:api_version/checkouts/count.json" do
      json_response 200, fixture(params[:api_version], "orders/checkouts/count")
    end
    # Retrieves a count of checkouts
    get "/admin/api/:api_version/checkouts.json" do
      json_response 200, fixture(params[:api_version], "orders/checkouts/index")
    end
    # Retrieves a list of abandoned checkouts

    # Order Risk API Endpoints
    post "/admin/api/:api_version/orders/:order_id/risks.json" do
      json_response 200, fixture(params[:api_version], "orders/risks/create")
    end
    # Creates an order risk for an order
    get "/admin/api/:api_version/orders/:order_id/risks.json" do
      json_response 200, fixture(params[:api_version], "orders/risks/index")
    end
    # Retrieves a list of all order risks for an order
    get "/admin/api/:api_version/orders/:order_id/risks/:risk_id.json" do
      json_response 200, fixture(params[:api_version], "orders/risks/show")
    end
    # Retrieves a single order risk by its ID
    put "/admin/api/:api_version/orders/:order_id/risks/:risk_id.json" do
      json_response 200, fixture(params[:api_version], "orders/risks/update")
    end
    # Updates an order risk
    delete "/admin/api/:api_version/orders/:order_id/risks/:risk_id.json" do
      json_response 200, fixture(params[:api_version], "orders/risks/destroy")
    end
    # deletes an order risk for an order

    # DraftOrder API Endpoints
    post "/admin/api/:api_version/draft_orders.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/create")
    end
    # Create a new DraftOrder
    get "/admin/api/:api_version/draft_orders/count.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/count")
    end
    # Receive a count of all DraftOrders
    put "/admin/api/:api_version/draft_orders/:draft_order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/update")
    end
    # Modify an existing DraftOrder
    get "/admin/api/:api_version/draft_orders.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/index")
    end
    # Retrieves a list of draft orders
    get "/admin/api/:api_version/draft_orders/:draft_order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/show")
    end
    # Receive a single DraftOrder
    post "/admin/api/:api_version/draft_orders/:draft_order_id/send_invoice.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/send_invoice")
    end
    # Send an invoice
    delete "/admin/api/:api_version/draft_orders/:draft_order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/destroy")
    end
    # Remove an existing DraftOrder
    put "/admin/api/:api_version/draft_orders/:draft_order_id/complete.json" do
      json_response 200, fixture(params[:api_version], "orders/draft_orders/complete")
    end
    # Complete a draft order

    # Order API Endpoints
    get "/admin/api/:api_version/orders.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/index")
    end
    # Retrieves a list of orders
    get "/admin/api/:api_version/orders/count.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/count")
    end
    # Retrieves an order count
    get "/admin/api/:api_version/orders/:order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/show")
    end
    # Retrieves a specific order
    post "/admin/api/:api_version/orders/:order_id/close.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/close")
    end
    # Closes an order
    post "/admin/api/:api_version/orders/:order_id/open.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/open")
    end
    # Re-opens a closed order
    post "/admin/api/:api_version/orders/:order_id/cancel.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/cancel")
    end
    # Cancels an order
    post "/admin/api/:api_version/orders.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/create")
    end
    # Creates an order
    put "/admin/api/:api_version/orders/:order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/update")
    end
    # Updates an order
    delete "/admin/api/:api_version/orders/:order_id.json" do
      json_response 200, fixture(params[:api_version], "orders/orders/destroy")
    end
    # deletes an order

    # Transaction API Endpoints
    get "/admin/api/:api_version/orders/:order_id/transactions.json" do
      json_response 200, fixture(params[:api_version], "orders/transactions/index")
    end
    # Retrieves a list of transactions
    get "/admin/api/:api_version/orders/:order_id/transactions/count.json" do
      json_response 200, fixture(params[:api_version], "orders/transactions/count")
    end
    # Retrieves a count of an order"s transactions
    get "/admin/api/:api_version/orders/:order_id/transactions/:transaction_id.json" do
      json_response 200, fixture(params[:api_version], "orders/transactions/show")
    end
    # Retrieves a specific transaction
    post "/admin/api/:api_version/orders/:order_id/transactions.json" do
      json_response 200, fixture(params[:api_version], "orders/transactions/create")
    end
    # Creates a transaction for an order

    # Refund API Endpoints
    get "/admin/api/:api_version/orders/:order_id/refunds.json" do
      json_response 200, fixture(params[:api_version], "orders/refunds/index")
    end
    # Retrieves a list of refunds for an order
    get "/admin/api/:api_version/orders/:order_id/refunds/:refund_id.json" do
      json_response 200, fixture(params[:api_version], "orders/refunds/show")
    end
    # Retrieves a specific refund
    post "/admin/api/:api_version/orders/:order_id/refunds/calculate.json" do
      json_response 200, fixture(params[:api_version], "orders/refunds/calculate")
    end
    # Calculates a refund
    post "/admin/api/:api_version/orders/:order_id/refunds.json" do
      json_response 200, fixture(params[:api_version], "orders/refunds/create")
    end
    # Creates a refund
  end
end
