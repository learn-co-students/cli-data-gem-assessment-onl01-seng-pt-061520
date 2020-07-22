# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mlb_top_stories/version'

Gem::Specification.new do |spec|
  spec.name          = "mlb_top_stories"
  spec.version       = mlbTopStories::VERSION
  spec.authors       = ["billy needrith"]
  spec.email         = ["billy.needrith@gmail.com"]

  spec.summary       = %q{mlb Top Stories}
  spec.description   = %q{mlb Top Stories will pull MLB headlines and stories from ESPN, MLB.com, CBS Sports, and  Fox Sports.}
  spec.homepage      = "https://github.com/billyneedrith/mlb_top_stories-cli-gem"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ['mlb_top_stories']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end