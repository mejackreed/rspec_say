# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_say/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_say'
  spec.version       = RspecSay::VERSION
  spec.authors       = ['Jack Reed']
  spec.email         = ['phillipjreed@gmail.com']

  spec.summary       = 'Say your RSpec results.'
  spec.description   = 'Say your RSpec results.'
  spec.homepage      = 'https://github.com/mejackreed/rspec_say'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rspec', '~> 3'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
