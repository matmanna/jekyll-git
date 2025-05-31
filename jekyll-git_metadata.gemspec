# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/git_metadata/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-git_metadata"
  spec.version       = Jekyll::GitMetadata::VERSION
  spec.authors       = ["Ivan Tse"]
  spec.email         = ["ivan.tse1@gmail.com"]
  spec.summary       = %q{Expose Git metadata to Jekyll.}
  spec.description   = %q{Get access to Git information in your Jekyll templates}
  spec.homepage      = "https://github.com/joshpinto6/jekyll-git_metadata"
  spec.license       = "MIT"
  spec.metadata["homepage"] = "https://github.com/joshpinto6/jekyll-git_metadata."
  spec.metadata["source_code_uri"] = "https://github.com/joshpinto6/jekyll-git_metadata."

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", '~> 4.0'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "shoulda"
  spec.add_development_dependency "mocha"
end
