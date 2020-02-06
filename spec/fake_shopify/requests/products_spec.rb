require "spec_helper"

describe "Products Router" do
  include Rack::Test::Methods

  PRODUCTS_TESTS = {
    "get /admin/api/2019-04/products/:product_id/images.json" => {
      route: "/admin/api/2019-04/products/:product_id/images.json",
      method: :get,
    },
    "get /admin/api/2019-04/products/:product_id/images/count.json" => {
      route: "/admin/api/2019-04/products/:product_id/images/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/products/:product_id/images/:image_id.json" => {
      route: "/admin/api/2019-04/products/:product_id/images/:image_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/products/:product_id/images.json" => {
      route: "/admin/api/2019-04/products/:product_id/images.json",
      method: :post,
    },
    "put /admin/api/2019-04/products/:product_id/images/:image_id.json" => {
      route: "/admin/api/2019-04/products/:product_id/images/:image_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/products/:product_id/images/:image_id.json" => {
      route: "/admin/api/2019-04/products/:product_id/images/:image_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/custom_collections.json" => {
      route: "/admin/api/2019-04/custom_collections.json",
      method: :get,
    },
    "get /admin/api/2019-04/custom_collections/count.json" => {
      route: "/admin/api/2019-04/custom_collections/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/custom_collections/:custom_collection_id.json" => {
      route: "/admin/api/2019-04/custom_collections/:custom_collection_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/custom_collections.json" => {
      route: "/admin/api/2019-04/custom_collections.json",
      method: :post,
    },
    "put /admin/api/2019-04/custom_collections/:custom_collection_id.json" => {
      route: "/admin/api/2019-04/custom_collections/:custom_collection_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/custom_collections/:custom_collection_id.json" => {
      route: "/admin/api/2019-04/custom_collections/:custom_collection_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/products/:product_id/variants.json" => {
      route: "/admin/api/2019-04/products/:product_id/variants.json",
      method: :get,
    },
    "get /admin/api/2019-04/products/:product_id/variants/count.json" => {
      route: "/admin/api/2019-04/products/:product_id/variants/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/variants/:variant_id.json" => {
      route: "/admin/api/2019-04/variants/:variant_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/products/:product_id/variants.json" => {
      route: "/admin/api/2019-04/products/:product_id/variants.json",
      method: :post,
    },
    "put /admin/api/2019-04/variants/:variant_id.json" => {
      route: "/admin/api/2019-04/variants/:variant_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/products/:product_id/variants/:variant_id.json" => {
      route: "/admin/api/2019-04/products/:product_id/variants/:variant_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/products.json" => {
      route: "/admin/api/2019-04/products.json",
      method: :get,
    },
    "get /admin/api/2019-04/products/count.json" => {
      route: "/admin/api/2019-04/products/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/products/:product_id.json" => {
      route: "/admin/api/2019-04/products/:product_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/products.json" => {
      route: "/admin/api/2019-04/products.json",
      method: :post,
    },
    "put /admin/api/2019-04/products/:product_id.json" => {
      route: "/admin/api/2019-04/products/:product_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/products/:product_id.json" => {
      route: "/admin/api/2019-04/products/:product_id.json",
      method: :delete,
    },
    # "get /admin/api/2020-01/collections/:collection_id.json" => {
    #   route: "/admin/api/2020-01/collections/:collection_id.json",
    #   method: :get,
    # },
    # "get /admin/api/2020-01/collections/:collection_id/products.json" => {
    #   route: "/admin/api/2020-01/collections/:collection_id/products.json",
    #   method: :get,
    # },
    "post /admin/api/2019-04/collects.json" => {
      route: "/admin/api/2019-04/collects.json",
      method: :post,
    },
    "delete /admin/api/2019-04/collects/:collect_id.json" => {
      route: "/admin/api/2019-04/collects/:collect_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/collects.json" => {
      route: "/admin/api/2019-04/collects.json",
      method: :get,
    },
    "get /admin/api/2019-04/collects/count.json" => {
      route: "/admin/api/2019-04/collects/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/collects/:collect_id.json" => {
      route: "/admin/api/2019-04/collects/:collect_id.json",
      method: :get,
    },
    "get /admin/api/2019-04/smart_collections.json" => {
      route: "/admin/api/2019-04/smart_collections.json",
      method: :get,
    },
    "get /admin/api/2019-04/smart_collections/count.json" => {
      route: "/admin/api/2019-04/smart_collections/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/smart_collections/:smart_collection_id.json" => {
      route: "/admin/api/2019-04/smart_collections/:smart_collection_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/smart_collections.json" => {
      route: "/admin/api/2019-04/smart_collections.json",
      method: :post,
    },
    "put /admin/api/2019-04/smart_collections/:smart_collection_id.json" => {
      route: "/admin/api/2019-04/smart_collections/:smart_collection_id.json",
      method: :put,
    },
    "put /admin/api/2019-04/smart_collections/:smart_collection_id/order.json" => {
      route: "/admin/api/2019-04/smart_collections/:smart_collection_id/order.json",
      method: :put,
    },
    "delete /admin/api/2019-04/smart_collections/:smart_collection_id.json" => {
      route: "/admin/api/2019-04/smart_collections/:smart_collection_id.json",
      method: :delete,
    },
  }.freeze

  PRODUCTS_TESTS.each_pair do |name, action|
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
