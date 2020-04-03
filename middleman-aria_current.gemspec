# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-aria_current"
  s.version     = "0.1.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tyson Gach", "Sean Doyle"]
  s.email       = ["tyson@thoughtbot.com", "sean@thoughtbot.com"]
  s.homepage    = "https://github.com/thoughtbot/middleman-aria_current"
  s.summary     = <<-SUM
A Middleman extension for indicating a current (active) link
using `aria-current`.
  SUM
  s.summary     = <<-DESC
middleman-aria_current provides a `current_link_to` helper, which wraps the
built-in `link_to` helper. It checks the URL of the current visited page and
outputs an `aria-current` attribute if it matches the URL in the link.
  DESC
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "capybara", "~> 2.13"
  s.add_development_dependency "cucumber", "~> 2.4"
  s.add_development_dependency "middleman-cli", "~> 4.0"
  s.add_development_dependency "rake", "~> 12.0"
  s.add_development_dependency "rspec", "~> 3.5"
  s.add_runtime_dependency "middleman-core", "~> 4.0"
end
