module FakeShopify
  class StubApp < Sinatra::Base
    # Payouts API Endpoints
    get "/admin/api/:api_version/shopify_payments/payouts.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/payouts/index")
    end
    # Return a list of all payouts
    get "/admin/api/:api_version/shopify_payments/payouts/:payout_id.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/payouts/show")
    end
    # Return a single payout

    # Dispute API Endpoints
    get "/admin/api/:api_version/shopify_payments/disputes.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/disputes/index")
    end
    # Return a list of all disputes
    get "/admin/api/:api_version/shopify_payments/disputes/:dispute_id.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/disputes/show")
    end
    # Return a single dispute

    # Balance API Endpoints
    get "/admin/api/:api_version/shopify_payments/balance.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/balance/show")
    end
    # Return the current balance

    # Transactions API Endpoints
    get "/admin/api/:api_version/shopify_payments/balance/transactions.json" do
      json_response 200, fixture(params[:api_version], "shopify_payments/transactions/index")
    end
    # Return a list of all balance transactions
  end
end
