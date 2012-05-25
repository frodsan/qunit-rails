require File.expand_path('../lib/qunit/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name           = 'qunit-rails'
  gem.version        = QUnit::Rails::VERSION

  gem.authors        = ['Francesco Rodriguez']
  gem.email          = ['lrodriguezsanc@gmail.com']
  gem.homepage       = 'https://github.com/frodsan/qunit-rails'
  gem.summary        = 'QUnit for Rails 3.2+'
  gem.description    = 'Support for the Rails 3.2 asset pipeline'

  gem.files          = `git ls-files`.split($\)
  gem.require_paths  = ['lib']

  gem.add_dependency 'railties', '~> 3.2.3'
end
