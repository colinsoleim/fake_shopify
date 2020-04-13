module FakeShopify
  class StubApp < Sinatra::Base
    # Comment API Endpoints
    get "/admin/api/:api_version/comments.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/index")
    end
    # Retrieves a list of comments
    get "/admin/api/:api_version/comments/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/count")
    end
    # Retrieves a count of comments
    get "/admin/api/:api_version/comments/:comment_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/show")
    end
    # Retrieves a single comment by its ID
    post "/admin/api/:api_version/comments.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/create")
    end
    # Creates a comment for an article
    put "/admin/api/:api_version/comments/:comment_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/update")
    end
    # Updates a comment of an article
    post "/admin/api/:api_version/comments/:comment_id/spam.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/spam")
    end
    # Marks a comment as spam
    post "/admin/api/:api_version/comments/:comment_id/not_spam.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/not_spam")
    end
    # Marks a comment as not spam
    post "/admin/api/:api_version/comments/:comment_id/approve.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/approve")
    end
    # Approves a comment
    post "/admin/api/:api_version/comments/:comment_id/remove.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/remove")
    end
    # Removes a comment
    post "/admin/api/:api_version/comments/:comment_id/restore.json" do
      json_response 200, fixture(params[:api_version], "online_store/comments/restore")
    end
    # Restores a previously removed comment

    # Page API Endpoints
    get "/admin/api/:api_version/pages.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/index")
    end
    # Retrieves a list of pages
    get "/admin/api/:api_version/pages/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/count")
    end
    # Retrieves a page count
    get "/admin/api/:api_version/pages/:page_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/show")
    end
    # Retrieves a single page by its ID
    post "/admin/api/:api_version/pages.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/create")
    end
    # Create a new Page
    put "/admin/api/:api_version/pages/:page_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/update")
    end
    # Updates a page
    delete "/admin/api/:api_version/pages/:page_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/pages/destroy")
    end
    # deletes a page

    # ScriptTag API Endpoints
    get "/admin/api/:api_version/script_tags.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/index")
    end
    # Retrieves a list of all script tags
    get "/admin/api/:api_version/script_tags/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/count")
    end
    # Retrieves a count of all script tags
    get "/admin/api/:api_version/script_tags/:script_tag_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/show")
    end
    # Retrieves a single script tag
    post "/admin/api/:api_version/script_tags.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/create")
    end
    # Creates a new script tag
    put "/admin/api/:api_version/script_tags/:script_tag_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/update")
    end
    # Updates a script tag
    delete "/admin/api/:api_version/script_tags/:script_tag_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/script_tags/destroy")
    end
    # deletes a script tag

    # Redirect API Endpoints
    get "/admin/api/:api_version/redirects.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/index")
    end
    # Retrieves a list of URL redirects
    get "/admin/api/:api_version/redirects/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/count")
    end
    # Retrieves a count of URL redirects
    get "/admin/api/:api_version/redirects/:redirect_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/show")
    end
    # Retrieves a single redirect
    post "/admin/api/:api_version/redirects.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/create")
    end
    # Creates a redirect
    put "/admin/api/:api_version/redirects/:redirect_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/update")
    end
    # Updates an existing redirect
    delete "/admin/api/:api_version/redirects/:redirect_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/redirects/destroy")
    end
    # deletes a redirect

    # Blog API Endpoints
    get "/admin/api/:api_version/blogs.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/index")
    end
    # Retrieve a list of all blogs
    get "/admin/api/:api_version/blogs/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/count")
    end
    # Receive a count of all Blogs
    get "/admin/api/:api_version/blogs/:blog_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/show")
    end
    # Receive a single Blog
    post "/admin/api/:api_version/blogs.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/create")
    end
    # Create a new Blog
    put "/admin/api/:api_version/blogs/:blog_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/update")
    end
    # Modify an existing Blog
    delete "/admin/api/:api_version/blogs/:blog_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/blogs/destroy")
    end
    # Remove an existing Blog

    # Asset API Endpoints
    get "/admin/api/:api_version/themes/:theme_id/assets.json" do
      json_response 200, fixture(params[:api_version], "online_store/assets/index")
    end
    # Retrieves a list of assets for a theme

    # TODO: Add this route back in
    # Retrieves a single asset for a theme
    # get "/admin/api/:api_version/themes/:theme_id/assets.json?asset[key]=templates/index.liquid" do
    #   json_response 200, fixture(params[:api_version], "online_store/assets/show")
    # end

    put "/admin/api/:api_version/themes/:theme_id/assets.json" do
      json_response 200, fixture(params[:api_version], "online_store/assets/update")
    end
    # Creates or updates an asset for a theme
    delete "/admin/api/:api_version/themes/:theme_id/assets.json" do
      json_response 200, fixture(params[:api_version], "online_store/assets/destroy")
    end
    # deletes an asset from a theme

    # Theme API Endpoints
    get "/admin/api/:api_version/themes.json" do
      json_response 200, fixture(params[:api_version], "online_store/themes/index")
    end
    # Retrieves a list of themes
    get "/admin/api/:api_version/themes/:theme_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/themes/show")
    end
    # Retrieves a single theme
    post "/admin/api/:api_version/themes.json" do
      json_response 200, fixture(params[:api_version], "online_store/themes/create")
    end
    # Creates a theme
    put "/admin/api/:api_version/themes/:theme_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/themes/update")
    end
    # Modify an existing Theme
    delete "/admin/api/:api_version/themes/:theme_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/themes/destroy")
    end
    # Remove an existing Theme

    # Article API Endpoints
    get "/admin/api/:api_version/blogs/:blog_id/articles.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/index")
    end
    # Retrieves a list of all articles from a blog
    get "/admin/api/:api_version/blogs/:blog_id/articles/count.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/count")
    end
    # Retrieves a count of all articles from a blog
    get "/admin/api/:api_version/blogs/:blog_id/articles/:article_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/show")
    end
    # Receive a single Article
    post "/admin/api/:api_version/articles.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/create")
    end
    # Creates an article for a blog
    post "/admin/api/:api_version/blogs/:blog_id/articles.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/create")
    end
    # Creates an article for a blog
    put "/admin/api/:api_version/blogs/:blog_id/articles/:article_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/update")
    end
    # Updates an article
    get "/admin/api/:api_version/articles/authors.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/authors")
    end
    # Retrieves a list of all article authors
    get "/admin/api/:api_version/articles/tags.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/tags")
    end
    # Retrieves a list of all article tags
    delete "/admin/api/:api_version/blogs/:blog_id/articles/:article_id.json" do
      json_response 200, fixture(params[:api_version], "online_store/articles/destroy")
    end
    # deletes an article
  end
end
