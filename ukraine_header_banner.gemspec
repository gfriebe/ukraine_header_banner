
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ukraine_header_banner/version"

Gem::Specification.new do |spec|
  spec.name          = "ukraine_header_banner"
  spec.version       = UkraineHeaderBanner::VERSION
  spec.authors       = ["Gordon Friebe"]
  spec.email         = ["gfriebe@primecoder.de"]

  spec.summary       = 'Adds a method for including a header banner'
  spec.description   = 'Adds a method for including a header banner'
  spec.homepage      = "https://github.com/gfriebe/ukraine_header_banner.git"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency('maxmind-db', '~> 1.1.1')
  spec.add_dependency('rack', '>= 1.3', '< 3')
end
