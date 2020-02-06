module FakeShopify
  class StubApp < Sinatra::Base
    # Gift Card API Endpoints
    get "/admin/api/:api_version/gift_cards.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/index")
    end
    # Retrieves a list of gift cards
    get "/admin/api/:api_version/gift_cards/count.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/count")
    end
    # Retrieves a count of gift cards
    get "/admin/api/:api_version/gift_cards/search.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/search")
    end
    # Searches for gift cards
    get "/admin/api/:api_version/gift_cards/:gift_card_id.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/show")
    end
    # Retrieves a single gift card
    post "/admin/api/:api_version/gift_cards.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/create")
    end
    # Creates a gift card
    put "/admin/api/:api_version/gift_cards/:gift_card_id.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/update")
    end
    # Updates an existing gift card
    post "/admin/api/:api_version/gift_cards/:gift_card_id/disable.json" do
      json_response 200, fixture(params[:api_version], "plus/gift_cards/disable")
    end
    # Disables a gift card

    # User API Endpoints
    get "/admin/api/:api_version/users.json" do
      json_response 200, fixture(params[:api_version], "plus/users/index")
    end
    # Retrieves a list of all users
    get "/admin/api/:api_version/users/current.json" do
      json_response 200, fixture(params[:api_version], "plus/users/current")
    end
    # Retrieves the currently logged-in user
    get "/admin/api/:api_version/users/:user_id.json" do
      json_response 200, fixture(params[:api_version], "plus/users/show")
    end
    # Retrieves a single user
  end
end
