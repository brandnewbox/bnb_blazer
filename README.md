# BnbBlazer

Welcome to BNB Blazer! This is a gem wrapper for the [Blazer](https://github.com/ankane/blazer) query tool designed specifically for BNB projects. In this directory, you'll find the files you need to edit the behavior/appearance of this gem. Additionally, you can spin up the test app to experiment with the appearance of the tool. Put your Ruby code in the file `lib/bnb_blazer`.

## Installation

To use this wrapper in conjunction with Blazer, add this block to your application's Gemfile:

```ruby
gem "blazer"
gem "bnb_blazer"
```

And then execute:

    $ bundle install

## Development

This gem comes bundled with a test app to help you test out new display designs with pre-populated blazer queries. To get the environment up and running: 

1. Clone this repo down to your machine
2. Make sure you have [Dip](https://github.com/brandnewbox/bnb-dip-defaults) installed and configured
3. In your new `bnb_blazer` directory, run `docker-compose up`
4. Once all your containers have spun up, run `dip bash`
5. Run `bundle exec rails db:create`
6. Run `bundle exec rails db:migrate`
7. Run `bundle exec rails db:seed`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brandnewbox/bnb_blazer.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
