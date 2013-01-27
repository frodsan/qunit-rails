Gem::Specification.new do |gem|
  gem.name           = 'qunit-rails'
  gem.version        = '0.0.3'

  gem.authors        = ['Francesco Rodriguez']
  gem.email          = ['lrodriguezsanc@gmail.com']
  gem.homepage       = 'https://github.com/frodsan/qunit-rails'
  gem.summary        = 'Qunit for Rails 3.2+'
  gem.description    = gem.summary

  gem.files            = `git ls-files`.split($\)
  gem.require_paths    = ['lib']
  gem.extra_rdoc_files = ['CHANGELOG.md', 'LICENSE.md', 'README.md']
  gem.rdoc_options     = ['--charset=UTF-8']

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_dependency 'railties', '>= 3.2.3'
end
