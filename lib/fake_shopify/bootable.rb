require "capybara"
require "capybara/server"
require "fake_shopify/utils"

module Bootable
  def boot(port = FakeShopify::Utils.find_available_port)
    instance = new
    Capybara::Server.new(instance, port: port).tap(&:boot)
  end

  def boot_once
    @boot_once ||= boot(server_port)
  end

  def server_port
    @server_port ||= FakeShopify::Utils.find_available_port
  end
end
