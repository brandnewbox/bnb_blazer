# BnbBlazer

Welcome to BNB Blazer! This is a gem wrapper for the [Blazer](https://github.com/ankane/blazer) query tool designed specifically for BNB projects. In this directory, you'll find the files you need to edit the behavior/appearance of this gem. Additionally, you can spin up the test app to experiment with the appearance of the tool. Put your Ruby code in the file `lib/bnb_blazer`.

## PURPOSE

BNB Blazer helps our clients understand how their apps are performing, and keep an eye on key metrics about their business activities inside the app. In short, it helps our clients understand the superpowers that we build for them, and gives them reportable ways to tell others about the cool shit we built.

## Installation

To use this wrapper in conjunction with Blazer, add this block to your application's Gemfile:

```ruby
gem "bnb_blazer"
```

And then execute:
```
dip bundle install
```

Follow the [Blazer installation instructions](https://github.com/ankane/blazer#installation) to configure the gem and add any custom configuration, _except_ you don't need to add `gem "blazer"`, since that's a dependency of this gem. At minimum, you will need to run:

```
dip rails generate blazer:install
dip rails db:migrate
```

And mount the dashboard in your config/routes.rb:

```
mount Blazer::Engine, at: "blazer"
```
And specify your `BLAZER_DATABASE_URL`

## Development

This gem comes bundled with a test app to help you test out new display designs with pre-populated blazer queries. To get the environment up and running:

1. Clone this repo down to your machine
2. Make sure you have [Dip](https://github.com/brandnewbox/bnb-dip-defaults) installed and configured
3. Run `dip setup`
4. In your new `bnb_blazer` directory, run `docker-compose up`
5. Uncomment the `mount Blazer::Engine, at: "/blazer"` line in your `config/routes.rb` file.
5. Navigate to http://localhost:3000/blazer in your browser, and away you go!

For the work of actually overriding the gem, Rails will load any view that we have defined in the `app/views` (not `spec/dummy/app/views`) folder before looking for them in the blazer gem. So any view that we want to override or restyle you just have to create at the same location as it would be found in the blazer gem. E.g. the homepage view for blazer is found at `app/views/blazer/queries/home.html.erb`, so if we want to override what the homepage looks like in our gem then we create a new view at `app/views/blazer/queries/home.html.erb` and copy the existing HTML from the gem and make modifications as necessary.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brandnewbox/bnb_blazer.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
