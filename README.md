QUnit on Rails
==============

QUnit JavaScript Unit Testing framework for Rails.

Requirements
------------

* Ruby 1.9.x
* Rails 3.2+

Getting Started
---------------

QUnit on Rails works with Rails 3.2. You can add it to your Gemfile with:

    group :development, :test do
      gem 'qunit-rails'
    end

Run the bundle command to install it.

**The engine is automatically mounted into your application in the development
and test environments.**

After you install it and add it to your Gemfile, you need to run the install
generator:

    rails g qunit:install

The generator by default will create two directories with two files inside
your `test` folder:

    test/javascripts/test_helper.js
    test/stylesheets/test_helper.css

If you prefer *CoffeeScript*, you can run:

    rails g qunit:install -c

This will generate a `test_helper.coffe` file instead of `test_helper.js`.

## Usage

### JavaScript/CoffeeScript Tests

The `test/javascripts/test_helper.js` file has the following content:

    //= require application
    //= require_tree .
    //= require_self

This loads all the javascripts defined in `app/assets/javascripts/application.js`.
Also, this pulls in all your test files from the `javascripts` folder into
**QUnit-Rails**:

    test/javascripts/*_test.js
    test/javascripts/*_test.coffee
    test/javascripts/*_test.js.coffee
    test/javascripts/*_test.js.erb

Here's an example `test/javascripts/foo_test.js`:

    test('Foo always says the truth', function() {
      foo = new Foo();

      equal(foo.truth, true, 'foo.truth is not true');
    });

If you're not comfortable with loading all the javascript defined in the
`application.js` manifest file, you can delete `//= require application`
from `test_helper.js` or `#= require application` from `test_helper.coffee`
and use the `require` dependency mechanism in your tests to pull the dependencies.

Here's an example `test/javascripts/foo_test.js`:

    //= require foo

    test('Foo always says the truth', function() {
      foo = new Foo();

      equal(foo.truth, true, 'foo.truth is not true');
    });

### Stylesheets

For including stylesheets in your tests, **QUnit-Rails** uses
`test/javascripts/test_helper.css`. Use [Sprockets](https://github.com/sstephenson/sprockets)
directives to include the right css files:

    /*
     *= require application
     *= require_tree .
    */

### Overriding `index.html`

You can set your own custom Test Runner, by overriding
the default `index.html.erb`. Create a new file in
`app/views/qunit/rails/test/index.html.erb` and edit it
whichever you prefer:

    <html>
      <head>
        <title>My Custom Test Runner</title>
      </head>
      <body>
        <h1>My Custom Test Runner</h1>
      </body>
    </html>

## Run Tests

### Start server

Start the server to run the tests:

    rails s

Go to `http://localhost:3000/qunit` to see the QUnit Test Runner.

### From the CLI

[Eventually](/)

### Autotest

[Eventually](/)

## What's next?

Profit.

## License

MIT License. Copyright 2012 Francesco Rodriguez. <http://www.frodsan.com>
