QUnit on Rails
==============

QUnit JavaScript Unit Testing framework for Rails.

Getting Started
---------------

QUnit on Rails works with Rails 3.2. You can add it to your Gemfile with:

```ruby
group :development, :test do
  gem "qunit-rails"
end
```

Run the bundle command to install it. The engine is automatically mounted
into your application in the development and test environments.

After you install it and add it to your Gemfile, you need to run the install
generator:

    rails g qunit:install

The generator by default will create two directories with two files inside
your `test` folder:

    test/javascripts/test_helper.js
    test/stylesheets/test_helper.css

If you want to specify a custom folder name for the tests and the test helpers,
you'll need to change the `qunit.tests_path` option in `config/environments/development.rb`
file:

```ruby
App::Application.configure do
  ...

  config.qunit.tests_path = "spec"
end
```

Then, this is the result if you run `rails g qunit:install`:

    spec/javascripts/test_helper.js
    spec/stylesheets/test_helper.js

If you prefer CoffeeScript, you can run:

    rails g qunit:install -j coffee

This will generate a `test_helper.coffee` file instead of `test_helper.js`.

Usage
-----

### JavaScript/CoffeeScript Tests

The `test/javascripts/test_helper.js` file has the following content:

```javascript
//= require application
//= require_tree .
//= require_self
```

This loads all the javascripts defined in `app/assets/javascripts/application.js`.
Also, this pulls in all your test files from the `javascripts` folder into
**QUnit-Rails**:

    test/javascripts/*_test.js
    test/javascripts/*_test.coffee
    test/javascripts/*_test.js.coffee
    test/javascripts/*_test.js.erb

Here's an example `test/javascripts/foo_test.js`:

```javascript
test("Foo always says the truth", function() {
  foo = new Foo();

  equal(foo.truth, true, "foo.truth is not true");
});
```

If you're not comfortable with loading all the javascript defined in the
`application.js` manifest file, you can delete `//= require application`
from `test_helper.js` or `#= require application` from `test_helper.coffee`
and use the `require` dependency mechanism in your tests to pull the dependencies.

Here's an example `test/javascripts/foo_test.js`:

```javascript
//= require foo

test("Foo always says the truth", function() {
  foo = new Foo();

  equal(foo.truth, true, "foo.truth is not true");
});
```

### Stylesheets

For including stylesheets in your tests, It uses
`test/javascripts/test_helper.css`. Use [Sprockets][sprockets]
directives to include the right css files:

```css
/*
 *= require application
 *= require_tree .
*/
```

### Overriding `index.html`

You can set your own custom Test Runner, by overriding
the default `index.html.erb`. Create a new file in
`app/views/q_unit/rails/test/index.html.erb` and edit it
whichever you prefer:

```html
<html>
  <head>
    <title>My Custom Test Runner</title>
  </head>
  <body>
    <h1>My Custom Test Runner</h1>
  </body>
</html>
```

Run Tests
---------

### Start server

Start the server to run the tests:

    rails s

Go to <http://localhost:3000/qunit> to see the QUnit Test Runner.

[sprockets]: https://github.com/sstephenson/sprockets)
