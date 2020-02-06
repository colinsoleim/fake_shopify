# FakeShopify

This gem provides a way to test a Shopify app without hitting Shopify's servers. It uses [Webmock](https://github.com/bblimke/webmock) to intercept all of the calls from Shopify's Ruby API library and returns JSON fixtures from Shopify's example documentation. The gem's design borrows heavily from thoughtbot's [FakeStripe](https://github.com/thoughtbot/fake_stripe) gem. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fake_shopify'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fake_shopify

## Usage

Require the library in your spec support:

```ruby
# spec/support/fake_shopify.rb
require 'fake_shopify'

RSpec.configure do |config|
  config.before(:each) do
    FakeShopify.stub_shopify
  end
end
```

Then start a ShopiyAPI::Session with the following values:

```ruby
    session = ShopifyAPI::Session.new(
      domain: 'domain',
      token: 'foobar',
      api_version: '2019-04',
    )
    ShopifyAPI::Base.activate_session(session)
```

For now, these exact values for `domain` and `api_version` are required.

## Development Roadmap

- Add fixtures for all other Shopify API versions
- Allow users to set custom shop domain for testing

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fake_shopify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/fake_shopify/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FakeShopify project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fake_shopify/blob/master/CODE_OF_CONDUCT.md).
