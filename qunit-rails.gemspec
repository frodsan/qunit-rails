Gem::Specification.new do |s|
  s.name        = "qunit-rails"
  s.version     = "0.0.4"
  s.authors     = ["Francesco Rodriguez"]
  s.email       = ["lrodriguezsanc@gmail.com"]
  s.homepage    = "https://github.com/frodsan/qunit-rails"
  s.summary     = "Qunit for Rails."
  s.description = s.summary
  s.license     = "Unlicense"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "railties", ">= 3.2.3"
end
