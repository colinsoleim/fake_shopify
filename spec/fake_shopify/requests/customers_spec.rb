require "spec_helper"

describe "Customers Router" do
  include Rack::Test::Methods

  CUSTOMER_TESTS = {
    "get /admin/api/2019-04/customers.json" => {
      route: "/admin/api/2019-04/customers.json",
      method: :get,
    },
    "get /admin/api/2019-04/customers/search.json" => {
      route: "/admin/api/2019-04/customers/search.json",
      method: :get,
    },
    "get /admin/api/2019-04/customers/:customer_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/customers.json" => {
      route: "/admin/api/2019-04/customers.json",
      method: :post,
    },
    "put /admin/api/2019-04/customers/:customer_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id.json",
      method: :put,
    },
    "post /admin/api/2019-04/customers/:customer_id/account_activation_url.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/account_activation_url.json",
      method: :post,
    },
    "post /admin/api/2019-04/customers/:customer_id/send_invite.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/send_invite.json",
      method: :post,
    },
    "delete /admin/api/2019-04/customers/:customer_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/customers/count.json" => {
      route: "/admin/api/2019-04/customers/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/customers/:customer_id/orders.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/orders.json",
      method: :get,
    },
    "get /admin/api/2019-04/customers/:customer_id/addresses.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses.json",
      method: :get,
    },
    "get /admin/api/2019-04/customers/:customer_id/addresses/:address_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses/:address_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/customers/:customer_id/addresses.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses.json",
      method: :post,
    },
    "put /admin/api/2019-04/customers/:customer_id/addresses/:address_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses/:address_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/customers/:customer_id/addresses/:address_id.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses/:address_id.json",
      method: :delete,
    },
    "put /admin/api/2019-04/customers/:customer_id/addresses/set.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses/set.json",
      method: :put,
    },
    "put /admin/api/2019-04/customers/:customer_id/addresses/:address_id/default.json" => {
      route: "/admin/api/2019-04/customers/:customer_id/addresses/:address_id/default.json",
      method: :put,
    },
    "get /admin/api/2019-04/customer_saved_searches.json" => {
      route: "/admin/api/2019-04/customer_saved_searches.json",
      method: :get,
    },
    "get /admin/api/2019-04/customer_saved_searches/count.json" => {
      route: "/admin/api/2019-04/customer_saved_searches/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json" => {
      route: "/admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/customer_saved_searches/customer_saved_search_id/customers.json" => {
      route: "/admin/api/2019-04/customer_saved_searches/customer_saved_search_id/customers.json",
      method: :get,
    },
    "post /admin/api/2019-04/customer_saved_searches.json" => {
      route: "/admin/api/2019-04/customer_saved_searches.json",
      method: :post,
    },
    "put /admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json" => {
      route: "/admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json" => {
      route: "/admin/api/2019-04/customer_saved_searches/customer_saved_search_id.json",
      method: :delete,
    },
  }.freeze

  CUSTOMER_TESTS.each_pair do |name, action|
    describe name do
      it "returns valid json" do
        send action[:method], action[:route]
        expect { JSON.parse(last_response.body) }.not_to raise_error
      end
    end
  end

  def app
    FakeShopify::StubApp.new
  end
end
