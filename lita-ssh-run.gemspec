Gem::Specification.new do |spec|
  spec.name          = "lita-ssh-run"
  spec.version       = "0.0.1"
  spec.authors       = ["Dan Cash"]
  spec.email         = ["dancash04@gmail.com"]
  spec.description   = %q{Runs commands against remote server via ssh}
  spec.summary       = %q{See description}
  spec.homepage      = "https://github.com/cashman04/lita-ssh-run"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.1"
  spec.add_runtime_dependency 'net-ssh'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"

  spec.metadata = { "lita_plugin_type" => "handler" }
end
