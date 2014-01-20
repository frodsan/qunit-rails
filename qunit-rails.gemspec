Gem::Specification.new do |s|
  s.name        = "qunit-rails"
  s.version     = "0.0.7"
  s.authors     = ["Francesco Rodriguez"]
  s.email       = ["frodsan@me.com"]
  s.homepage    = "https://github.com/frodsan/qunit-rails"
  s.summary     = "QUnit for Rails."
  s.description = s.summary
  s.license     = "Unlicense"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "railties"
end
