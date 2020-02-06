require "spec_helper"

describe "Orders Router" do
  include Rack::Test::Methods

  ORDERS_TESTS = {
    "get /admin/api/2019-04/checkouts/count.json" => {
      route: "/admin/api/2019-04/checkouts/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/checkouts.json" => {
      route: "/admin/api/2019-04/checkouts.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/risks.json" => {
      route: "/admin/api/2019-04/orders/:order_id/risks.json",
      method: :post,
    },
    "get /admin/api/2019-04/orders/:order_id/risks.json" => {
      route: "/admin/api/2019-04/orders/:order_id/risks.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/risks/:risk_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/risks/:risk_id.json",
      method: :get,
    },
    "put /admin/api/2019-04/orders/:order_id/risks/:risk_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/risks/:risk_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/orders/:order_id/risks/:risk_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/risks/:risk_id.json",
      method: :delete,
    },
    "post /admin/api/2019-04/draft_orders.json" => {
      route: "/admin/api/2019-04/draft_orders.json",
      method: :post,
    },
    "put /admin/api/2019-04/draft_orders/:draft_order_id.json" => {
      route: "/admin/api/2019-04/draft_orders/:draft_order_id.json",
      method: :put,
    },
    "get /admin/api/2019-04/draft_orders.json" => {
      route: "/admin/api/2019-04/draft_orders.json",
      method: :get,
    },
    "get /admin/api/2019-04/draft_orders/:draft_order_id.json" => {
      route: "/admin/api/2019-04/draft_orders/:draft_order_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/draft_orders/count.json" => {
      route: "/admin/api/2019-04/draft_orders/count.json",
      method: :get,
    },
    "post /admin/api/2019-04/draft_orders/:draft_order_id/send_invoice.json" => {
      route: "/admin/api/2019-04/draft_orders/:draft_order_id/send_invoice.json",
      method: :post,
    },
    "delete /admin/api/2019-04/draft_orders/:draft_order_id.json" => {
      route: "/admin/api/2019-04/draft_orders/:draft_order_id.json",
      method: :delete,
    },
    "put /admin/api/2019-04/draft_orders/:draft_order_id/complete.json" => {
      route: "/admin/api/2019-04/draft_orders/:draft_order_id/complete.json",
      method: :put,
    },
    "get /admin/api/2019-04/orders.json" => {
      route: "/admin/api/2019-04/orders.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/count.json" => {
      route: "/admin/api/2019-04/orders/count.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/close.json" => {
      route: "/admin/api/2019-04/orders/:order_id/close.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders/:order_id/open.json" => {
      route: "/admin/api/2019-04/orders/:order_id/open.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders/:order_id/cancel.json" => {
      route: "/admin/api/2019-04/orders/:order_id/cancel.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders.json" => {
      route: "/admin/api/2019-04/orders.json",
      method: :post,
    },
    "put /admin/api/2019-04/orders/:order_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/orders/:order_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/orders/:order_id/transactions.json" => {
      route: "/admin/api/2019-04/orders/:order_id/transactions.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/transactions/count.json" => {
      route: "/admin/api/2019-04/orders/:order_id/transactions/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/transactions/:transaction_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/transactions/:transaction_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/transactions.json" => {
      route: "/admin/api/2019-04/orders/:order_id/transactions.json",
      method: :post,
    },
    "get /admin/api/2019-04/orders/:order_id/refunds.json" => {
      route: "/admin/api/2019-04/orders/:order_id/refunds.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/refunds/:refund_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/refunds/:refund_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/refunds/calculate.json" => {
      route: "/admin/api/2019-04/orders/:order_id/refunds/calculate.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders/:order_id/refunds.json" => {
      route: "/admin/api/2019-04/orders/:order_id/refunds.json",
      method: :post,
    },
  }.freeze

  ORDERS_TESTS.each_pair do |name, action|
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
