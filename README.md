# RspecSay

After tests finish, RSpecSay will say the result out loud. Currently supported on:
 - Mac OS X

Is this actually useful? No idea, but if you are multitasking and running longer running test suites this might be helpful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_say'
```

## Usage

You can either specify the formatting when using the rspec command:

```sh
rspec --format RSpecSay
```

Or add `--format RSpecSay` to a `.rspec` file placed in your project's root directory, so that you won't have to specify the --format option everytime you run the command.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mejackreed/rspec_say.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

