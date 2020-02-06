require "spec_helper"

describe "Online Store Router" do
  include Rack::Test::Methods

  ONLINE_STORE_TESTS = {
    "get /admin/api/2019-04/comments.json" => {
      route: "/admin/api/2019-04/comments.json",
      method: :get,
    },
    "get /admin/api/2019-04/comments/count.json" => {
      route: "/admin/api/2019-04/comments/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/comments/:comment_id.json" => {
      route: "/admin/api/2019-04/comments/:comment_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/comments.json" => {
      route: "/admin/api/2019-04/comments.json",
      method: :post,
    },
    "put /admin/api/2019-04/comments/:comment_id.json" => {
      route: "/admin/api/2019-04/comments/:comment_id.json",
      method: :put,
    },
    "post /admin/api/2019-04/comments/:comment_id/spam.json" => {
      route: "/admin/api/2019-04/comments/:comment_id/spam.json",
      method: :post,
    },
    "post /admin/api/2019-04/comments/:comment_id/not_spam.json" => {
      route: "/admin/api/2019-04/comments/:comment_id/not_spam.json",
      method: :post,
    },
    "post /admin/api/2019-04/comments/:comment_id/approve.json" => {
      route: "/admin/api/2019-04/comments/:comment_id/approve.json",
      method: :post,
    },
    "post /admin/api/2019-04/comments/:comment_id/remove.json" => {
      route: "/admin/api/2019-04/comments/:comment_id/remove.json",
      method: :post,
    },
    "post /admin/api/2019-04/comments/:comment_id/restore.json" => {
      route: "/admin/api/2019-04/comments/:comment_id/restore.json",
      method: :post,
    },
    "get /admin/api/2019-04/pages.json" => {
      route: "/admin/api/2019-04/pages.json",
      method: :get,
    },
    "get /admin/api/2019-04/pages/count.json" => {
      route: "/admin/api/2019-04/pages/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/pages/:page_id.json" => {
      route: "/admin/api/2019-04/pages/:page_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/pages.json" => {
      route: "/admin/api/2019-04/pages.json",
      method: :post,
    },
    "put /admin/api/2019-04/pages/:page_id.json" => {
      route: "/admin/api/2019-04/pages/:page_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/pages/:page_id.json" => {
      route: "/admin/api/2019-04/pages/:page_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/script_tags.json" => {
      route: "/admin/api/2019-04/script_tags.json",
      method: :get,
    },
    "get /admin/api/2019-04/script_tags/count.json" => {
      route: "/admin/api/2019-04/script_tags/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/script_tags/:script_tag_id.json" => {
      route: "/admin/api/2019-04/script_tags/:script_tag_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/script_tags.json" => {
      route: "/admin/api/2019-04/script_tags.json",
      method: :post,
    },
    "put /admin/api/2019-04/script_tags/:script_tag_id.json" => {
      route: "/admin/api/2019-04/script_tags/:script_tag_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/script_tags/:script_tag_id.json" => {
      route: "/admin/api/2019-04/script_tags/:script_tag_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/redirects.json" => {
      route: "/admin/api/2019-04/redirects.json",
      method: :get,
    },
    "get /admin/api/2019-04/redirects/count.json" => {
      route: "/admin/api/2019-04/redirects/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/redirects/:redirect_id.json" => {
      route: "/admin/api/2019-04/redirects/:redirect_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/redirects.json" => {
      route: "/admin/api/2019-04/redirects.json",
      method: :post,
    },
    "put /admin/api/2019-04/redirects/:redirect_id.json" => {
      route: "/admin/api/2019-04/redirects/:redirect_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/redirects/:redirect_id.json" => {
      route: "/admin/api/2019-04/redirects/:redirect_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/blogs.json" => {
      route: "/admin/api/2019-04/blogs.json",
      method: :get,
    },
    "get /admin/api/2019-04/blogs/count.json" => {
      route: "/admin/api/2019-04/blogs/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/blogs/:blog_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/blogs.json" => {
      route: "/admin/api/2019-04/blogs.json",
      method: :post,
    },
    "put /admin/api/2019-04/blogs/:blog_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/blogs/:blog_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/themes/:theme_id/assets.json" => {
      route: "/admin/api/2019-04/themes/:theme_id/assets.json",
      method: :get,
    },
    "get /admin/api/2019-04/themes/:theme_id/assets.json?asset[key]=templates/index.liquid" => {
      route: "/admin/api/2019-04/themes/:theme_id/assets.json?asset[key]=templates/index.liquid",
      method: :get,
    },
    "put /admin/api/2019-04/themes/:theme_id/assets.json" => {
      route: "/admin/api/2019-04/themes/:theme_id/assets.json",
      method: :put,
    },
    "delete /admin/api/2019-04/themes/:theme_id/assets.json" => {
      route: "/admin/api/2019-04/themes/:theme_id/assets.json",
      method: :delete,
    },
    "get /admin/api/2019-04/themes.json" => {
      route: "/admin/api/2019-04/themes.json",
      method: :get,
    },
    "get /admin/api/2019-04/themes/:theme_id.json" => {
      route: "/admin/api/2019-04/themes/:theme_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/themes.json" => {
      route: "/admin/api/2019-04/themes.json",
      method: :post,
    },
    "put /admin/api/2019-04/themes/:theme_id.json" => {
      route: "/admin/api/2019-04/themes/:theme_id.json",
      method: :put,
    },
    "delete /admin/api/2019-04/themes/:theme_id.json" => {
      route: "/admin/api/2019-04/themes/:theme_id.json",
      method: :delete,
    },
    "get /admin/api/2019-04/blogs/:blog_id/articles.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles.json",
      method: :get,
    },
    "get /admin/api/2019-04/blogs/:blog_id/articles/count.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles/count.json",
      method: :get,
    },
    "get /admin/api/2019-04/blogs/:blog_id/articles/:article_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles/:article_id.json",
      method: :get,
    },
    "post /admin/api/2019-04/blogs/:blog_id/articles.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles.json",
      method: :post,
    },
    "put /admin/api/2019-04/blogs/:blog_id/articles/:article_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles/:article_id.json",
      method: :put,
    },
    "get /admin/api/2019-04/articles/authors.json" => {
      route: "/admin/api/2019-04/articles/authors.json",
      method: :get,
    },
    "get /admin/api/2019-04/articles/tags.json" => {
      route: "/admin/api/2019-04/articles/tags.json",
      method: :get,
    },
    "delete /admin/api/2019-04/blogs/:blog_id/articles/:article_id.json" => {
      route: "/admin/api/2019-04/blogs/:blog_id/articles/:article_id.json",
      method: :delete,
    },
  }.freeze

  ONLINE_STORE_TESTS.each_pair do |name, action|
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
