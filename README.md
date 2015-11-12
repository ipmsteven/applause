# Applause

[![Build
Status](https://travis-ci.org/ipmsteven/applause.svg?branch=master)](https://travis-ci.org/ipmsteven/applause)
[![Code
Climate](https://codeclimate.com/github/ipmsteven/applause/badges/gpa.svg)](https://codeclimate.com/github/ipmsteven/applause)
[![Test
Coverage](https://codeclimate.com/github/ipmsteven/applause/badges/coverage.svg)](https://codeclimate.com/github/ipmsteven/applause/coverage)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/applause`. To experiment with that code, run `bin/console` for an interactive prompt.

Yet Another Command Line Option Parser(inspired by [clap](https://github.com/soveran/clap))

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'applause'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install applause

## Usage

Pass `ARGV` and a hash of flags.

``` ruby
Applause.run ARGV,
  '-a': lambda { |param| ... },
  '-b': lambda { ... }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

B.U.G reports and pull requests are welcome on GitHub at https://github.com/ipmsteven/applause. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

