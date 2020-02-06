require "spec_helper"

describe "Shipping and Fulfillment Router" do
  include Rack::Test::Methods

  SHIPPING_AND_FULFILLMENT_TESTS = {
    "post /admin/api/2019-04/carrier_services.json" => {
      route: "/admin/api/2019-04/carrier_services.json",
      method: :post,
    },
    "put /admin/api/2019-04/carrier_services/:carrier_service_id.json" => {
      route: "/admin/api/2019-04/carrier_services/:carrier_service_id.json",
      method: :put,
    },
    "get /admin/api/2019-04/carrier_services.json" => {
      route: "/admin/api/2019-04/carrier_services.json",
      method: :get,
    },
    "get /admin/api/2019-04/carrier_services/:carrier_service_id.json" => {
      route: "/admin/api/2019-04/carrier_services/:carrier_service_id.json",
      method: :get,
    },
    "delete /admin/api/2019-04/carrier_services/:carrier_service_id.json" => {
      route: "/admin/api/2019-04/carrier_services/:carrier_service_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/orders/:order_id/fulfillments.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/fulfillments/count.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/fulfillments.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments.json",
      method: :post,
    },
    "put /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id.json",
      method: :put,
    },
    "post /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/complete.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/complete.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/open.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/open.json",
      method: :post,
    },
    "post /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/cancel.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/cancel.json",
      method: :post,
    },
    # "get /admin/api/2020-01/assigned_fulfillment_orders.json" => {
    #   route: "/admin/api/2020-01/assigned_fulfillment_orders.json",
    #   method: :get,
    # },
    "get /admin/api/2019-04/fulfillment_services.json" => {
      route: "/admin/api/2019-04/fulfillment_services.json",
      method: :get,
    },
    "post /admin/api/2019-04/fulfillment_services.json" => {
      route: "/admin/api/2019-04/fulfillment_services.json",
      method: :post,
    },
    "get /admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json" => {
      route: "/admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json",
      method: :get,
    },
    "put /admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json" => {
      route: "/admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json" => {
      route: "/admin/api/2019-04/fulfillment_services/:fulfillment_service_id.json",
      method: :delete,
    },
    # "get /admin/api/2020-01/orders/:order_id/fulfillment_orders.json" => {
    #   route: "/admin/api/2020-01/orders/:order_id/fulfillment_orders.json",
    #   method: :get,
    # },
    # "get /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id.json",
    #   method: :get,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancel.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancel.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/close.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/close.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/move.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/move.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request/accept.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request/accept.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request/reject.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/fulfillment_request/reject.json",
    #   method: :post,
    # },
    "get /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events.json",
      method: :get,
    },
    "get /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events.json",
      method: :post,
    },
    "delete /admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json" => {
      route: "/admin/api/2019-04/orders/:order_id/fulfillments/:fulfillment_id/events/:event_id.json",
      method: :delete,
    },
    # "get /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/locations_for_move.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/locations_for_move.json",
    #   method: :get,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request/accept.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request/accept.json",
    #   method: :post,
    # },
    # "post /admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request/reject.json" => {
    #   route: "/admin/api/2020-01/fulfillment_orders/:fulfillment_order_id/cancellation_request/reject.json",
    #   method: :post,
    # },
  }.freeze

  SHIPPING_AND_FULFILLMENT_TESTS.each_pair do |name, action|
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
