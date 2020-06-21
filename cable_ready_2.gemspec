require_relative "lib/cable_ready_2/version"

Gem::Specification.new do |spec|
  spec.name = "cable_ready_2"
  spec.version = CableReady2::VERSION
  spec.authors = ["Andrew Mason", "Nathan Hopkins"]
  spec.email = ["andrewmcodes@protonmail.com", "natehop@gmail.com"]
  spec.summary = "[Proof of Concept]"
  spec.description = <<~DESC
    CableReady22 is a soft fork of CableReady2 to create a
    proof of concept for a better development workflow.
  DESC
  spec.homepage = "https://github.com/andrewmcodes/cable_ready_2"
  spec.license = "MIT"
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata = {
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    "changelog_uri" => "#{spec.homepage}/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://www.rubydoc.info/cable_ready_2",
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage
  }
  spec.files = Dir["lib/**/*"]
  spec.bindir = "exe"
  spec.executables = %w[cable_ready_2]
  spec.require_paths = %w[lib]
  spec.extra_rdoc_files = Dir["README.md", "CHANGELOG.md", "LICENSE.txt"]
  spec.rdoc_options += [
    "--title", "CableReady22 - Proof of Concept",
    "--main", "README.md",
    "--line-numbers",
    "--inline-source",
    "--quiet"
  ]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_dependency "rails", ">= 5.2"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
