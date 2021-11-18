# frozen_string_literal: true

require_relative "lib/vultr/version"

Gem::Specification.new do |spec|
  spec.name          = "vultr"
  spec.version       = Vultr::VERSION
  spec.authors       = ["Tom Hockett"]
  spec.email         = ["tom.hockett@gmail.com"]

  spec.summary       = "A gem wrapping the Vulr API"
  spec.homepage      = "https://github.com/tomhockett/vultr"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tomhockett/vultr"
  spec.metadata["changelog_uri"] = "https://github.com/tomhockett/vultr/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency "faraday", "~> 1.8.0"
  spec.add_dependency "faraday_middleware", "~> 1.2.0"
end
