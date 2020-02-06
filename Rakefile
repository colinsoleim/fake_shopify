require "rubygems"
require "bundler"
require "rake"
require "rspec/core/rake_task"

Bundler::GemHelper.install_tasks(name: "fake_shopify")

desc "Default: run the specs and features."
task default: %w(spec:requests)

namespace :spec do
  desc "Run request specs"
  RSpec::Core::RakeTask.new("requests") do |t|
    t.pattern = "spec/fake_shopify/requests/{*_spec.rb}"
  end
end
