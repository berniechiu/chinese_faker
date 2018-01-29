

# ecoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chinese_faker/version'

Gem::Specification.new do |spec|
  spec.name          = "chinese_faker"
  spec.version       = ChineseFaker::VERSION
  spec.authors       = ["Bernie Chiu"]
  spec.email         = ["bernie_chiu@hotmail.com"]
  spec.description   = %q{A gem that allows to generate random Chinese identities}
  spec.summary       = %q{Call the gem module by each proper method to generate}
  spec.homepage      = "https://github.com/berniechiu/chinese_faker"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency('i18n', '~> 0.9')
end
