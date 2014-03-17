# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "story_fetcher"
  spec.version       = "0.0.1"
  spec.authors       = ["Ben Roesch"]
  spec.email         = ["bcroesch@gmail.com"]
  spec.description   = %q{Gem to automatically fetch a set of rss feeds}
  spec.summary       = %q{Gem to automatically fetch a set of rss feeds}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files          = %w(LICENSE.txt README.md Rakefile story_fetcher.gemspec)
  spec.files         += Dir.glob('{lib,spec}/**/*')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "feedjira", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
