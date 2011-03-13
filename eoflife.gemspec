# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{eoflife}
  s.version = "0.1.0.pre"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc Chung"]
  s.date = %q{2011-03-12}
  s.description = %q{Programmatic access to the Encylopedia of Life's API}
  s.email = %q{mchung@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "examples/pages.rb",
    "examples/ping.rb",
    "examples/search.rb",
    "lib/eoflife.rb",
    "lib/eoflife/client.rb",
    "lib/eoflife/error.rb",
    "lib/eoflife/version.rb",
    "spec/eoflife_spec.rb",
    "spec/fixtures/pages.json",
    "spec/fixtures/ping.json",
    "spec/fixtures/search.json",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mchung/eoflife}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{API for the Encylopedia of Life}
  s.test_files = [
    "examples/pages.rb",
    "examples/ping.rb",
    "examples/search.rb",
    "spec/eoflife_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.7"])
      s.add_runtime_dependency(%q<hashie>, ["~> 1.0.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 1.6.2"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.7"])
      s.add_dependency(%q<hashie>, ["~> 1.0.0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 1.6.2"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.7"])
    s.add_dependency(%q<hashie>, ["~> 1.0.0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 1.6.2"])
  end
end
