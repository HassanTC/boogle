# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boogle/version'

Gem::Specification.new do |spec|
  spec.name          = "boogle"
  spec.version       = Boogle::VERSION
  spec.authors       = ["HassanTC"]
  spec.email         = ["hassan.mahmoud1@outlook.com"]

  spec.summary       = %q{boogle is a gem that handle the google books apis hassle}
  spec.description   = %q{boogle is a gem that handle the google books apis hassle}
  spec.homepage      = "https://github.com/HassanTC/boogle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency('faraday')
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'byebug'
end
