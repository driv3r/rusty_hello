# frozen_string_literal: true

require_relative "lib/rusty_hello/version"

Gem::Specification.new do |spec|
  spec.name          = "rusty_hello"
  spec.version       = RustyHello::VERSION
  spec.authors       = ["Leszek Zalewski"]
  spec.email         = ["leszekzalewski@fastmail.fm"]

  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.files = Dir["lib/**/*", "src/**/*.rs", "rusty_hello.gemspec", "Cargo.toml", "LICENSE", "README.md"]

  spec.require_paths = ["lib"]

  spec.add_dependency "ffi"

end
