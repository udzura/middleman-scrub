# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-scrub/version'

Gem::Specification.new do |s|
  s.name        = "middleman-scrub"
  s.version     = Middleman::Scrub::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Uchio Kondo"]
  s.email       = ["udzura@udzura.jp"]
  s.homepage    = "https://github.com/udzura/middleman-scrub"
  s.summary     = %q{Scrub the created files by middleman}
  s.description = %q{Scrub the created files by middleman}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 4.2.1"])

  s.add_development_dependency "middleman-cli"
  s.add_development_dependency "bundler", "~> 1.13"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "cucumber", "~> 1.3"
  s.add_development_dependency "capybara"
  s.add_development_dependency "aruba", "~> 0.14"
  s.add_development_dependency "pandoc-ruby"
  s.add_development_dependency "kramdown"
end
