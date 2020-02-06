module FakeShopify
  class StubApp < Sinatra::Base
    # TenderTransactions API Endpoints
    get "/admin/api/:api_version/tender_transactions.json" do
      json_response 200, fixture(params[:api_version], "tender_transaction/tender_transactions/index")
    end
  end
end
