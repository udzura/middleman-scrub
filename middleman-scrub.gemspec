# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-scrub"
  s.version     = "0.0.1"
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

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
