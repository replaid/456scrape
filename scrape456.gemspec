lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "scrape456/version"

Gem::Specification.new do |spec|
  spec.name          = "scrape456"
  spec.version       = Scrape456::VERSION
  spec.authors       = ["Ryan Platte"]
  spec.email         = ["ryan@burnbush.net"]

  spec.summary       = %q{Export data from 123Signup sites.}
  spec.homepage      = "https://github.com/replaid/scrape456"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
