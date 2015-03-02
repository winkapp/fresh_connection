# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fresh_connection/version'

Gem::Specification.new do |spec|
  spec.name          = "fresh_connection"
  spec.version       = FreshConnection::VERSION
  spec.authors       = ["Tsukasa OISHI"]
  spec.email         = ["tsukasa.oishi@gmail.com"]
  spec.description   = %q{https://github.com/tsukasaoishi/fresh_connection}
  spec.summary       = %q{FreshConnection supports to connect with Mysql slave servers via Load Balancers.}
  spec.homepage      = "https://github.com/tsukasaoishi/fresh_connection"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'activerecord', '>= 3.2.0', '< 4.3'
  spec.add_dependency 'activesupport', '>= 3.2.0', '< 4.3'
  spec.add_dependency 'mysql2', '~> 0.3'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", '~> 10.0'
  spec.add_development_dependency "rspec", '~> 3.0'
  spec.add_development_dependency 'appraisal', '~> 1.0'
end
