# QUnit on Rails

QUnit JavaScript Unit Testing framework for Rails.

## Requirements

* Ruby 1.9.x
* Rails 3.2+

## Getting Started

QUnit on Rails works with Rails 3.2.  You can add it to your Gemfile with:

    gem 'qunit-rails'

Run the bundle command to install it.

After you install it and add it to your Gemfile, you need to run the install
generator:

    rails g qunit:install

The generator will create two directories with two files inside your `test` folder:

    test/javascripts/test_helper.js
    test/stylesheets/test_helper.css

## License

MIT License. Copyright 2012 Francesco Rodriguez. [http://www.frodsan.com]
