# frozen_string_literal: true

require_relative "lib/hypofriend_api/version"

Gem::Specification.new do |spec|
  spec.name          = "hypofriend_api"
  spec.version       = HypofriendApi::VERSION
  spec.authors       = ["Udeogu Ifechukwu"]
  spec.email         = ["ifebrand6@gmail.com"]
  spec.summary       = "Hypofriend Offers endpoint Consumer"
  spec.description   = "This gem allows  to easily make use of Hypofriendoffer endpoints "
  spec.homepage      = "https://github.com/ifebrand6/hypofriend-api"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # development dependency
  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.0'
 
  # Runtime dependencies
  spec.add_runtime_dependency "rest-client", "~> 2.0"

end
