module FakeShopify
  class StubApp < Sinatra::Base
    # PriceRules API Endpoints
    post "/admin/api/:api_version/price_rules.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/create")
    end

    get "/admin/api/:api_version/price_rules/count.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/count")
    end

    put "/admin/api/:api_version/price_rules/:price_rule_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/update")
    end

    get "/admin/api/:api_version/price_rules.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/index")
    end

    get "/admin/api/:api_version/price_rules/:price_rule_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/show")
    end

    delete "/admin/api/:api_version/price_rules/:price_rule_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/price_rules/destroy")
    end

    # DiscountCodes API Endpoints
    post "/admin/api/:api_version/price_rules/:price_rule_id/discount_codes.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/create")
    end

    put "/admin/api/:api_version/price_rules/:price_rule_id/discount_codes/:discount_code_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/update")
    end

    get "/admin/api/:api_version/price_rules/:price_rule_id/discount_codes.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/index")
    end

    get "/admin/api/:api_version/price_rules/:price_rule_id/discount_codes/:discount_code_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/show")
    end

    get "/admin/api/:api_version/discount_codes/lookup.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/lookup")
    end

    delete "/admin/api/:api_version/price_rules/:price_rule_id/discount_codes/:discount_code_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/destroy")
    end

    post "/admin/api/:api_version/price_rules/:price_rule_id/batch.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/batch_show")
    end

    get "/admin/api/:api_version/price_rules/:price_rule_id/batch/:batch_id/discount_codes.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/batch_discount_codes_index")
    end

    get "/admin/api/:api_version/price_rules/:price_rule_id/batch/:batch_id.json" do
      json_response 200, fixture(params[:api_version], "discounts/discount_codes/batch_create")
    end
  end
end
