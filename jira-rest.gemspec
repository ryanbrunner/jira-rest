# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jira-rest/version"

Gem::Specification.new do |s|
  s.name        = "jira-rest"
  s.version     = Jira::Rest::VERSION
  s.authors     = ["ryanbrunner"]
  s.email       = ["ryan@ryanbrunner.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "jira-rest"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", "~> 2.7.0"
  s.add_development_dependency "factory_girl", "~> 2.3.2"
  s.add_development_dependency "i18n", '~> 0.5.0'
  s.add_development_dependency "hashie", '~> 1.2.0'
  s.add_development_dependency "vcr", '~> 1.11.3'
  s.add_development_dependency "webmock", '~> 1.7.8'
  s.add_runtime_dependency "httparty"
end
