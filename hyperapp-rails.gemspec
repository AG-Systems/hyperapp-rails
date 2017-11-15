# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hyperapp/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "hyperapp-rails"
  spec.version       = Hyperapp::Rails::VERSION
  spec.authors       = ["Auriga"]
  spec.email         = ["No need"]

  spec.summary       = "Gem that makes it really easy to install hyperapp.js into your project. Will be updated"
  spec.description   = "Adding hyperapp.js into your project has never been so easy..."
  spec.homepage      = "https://github.com/AG-Systems/hyperapp-rails.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
