# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-aria_current"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tyson Gach", "Sean Doyle"]
  s.email       = ["tyson@thoughtbot.com", "sean@thoughtbot.com"]
  s.homepage    = "https://github.com/thoughtbot/middleman-aria_current"
  s.summary     = <<-HERE
A Middleman extension for indicating a current (active) link
using `aria-current`.
  HERE
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "middleman-core", "~> 4.2"
end
