# frozen_string_literal: true

require_relative "lib/star_wars_vehicles/version"

Gem::Specification.new do |spec|
  spec.name          = "star_wars_vehicles"
  spec.version       = StarWarsVehicles::VERSION
  spec.authors       = ["Javier"]
  spec.email         = ["coyote176@msn.com"]

  spec.summary       = "Star Wars Vehicles GEM"
  spec.description   = "Star Wars Vehicles GEM"
  spec.homepage      = "https://github.com/coyote176-10-12/star_wars_vehicles_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/coyote176-10-12/star_wars_vehicles_cli"

  spec.metadata["homepage_uri"] = "https://github.com/coyote176-10-12/star_wars_vehicles_cli"
  spec.metadata["source_code_uri"] = "https://github.com/coyote176-10-12/star_wars_vehicles_cli"
  spec.metadata["changelog_uri"] = "https://github.com/coyote176-10-12/star_wars_vehicles_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  #spec.add_dependency "bundler"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "pry"


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
