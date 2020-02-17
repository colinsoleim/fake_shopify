require "sinatra/base"
Dir[File.join(__dir__, '/routes', '*.rb')].each { |file| require file }

module FakeShopify
  class StubApp < Sinatra::Base
    def fixture(api_version, file_name)
      file_path = File.join(FakeShopify.fixture_path, api_version.to_s, "#{file_name}.json")
      File.open(file_path, "rb").read
    end

    def json_response(response_code, response_body)
      content_type :json
      status response_code
      response_body
    end
  end
end
