# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cleanup_recordings/version'

Gem::Specification.new do |spec|
  spec.name          = "cleanup_recordings"
  spec.license=""
  spec.version       = CleanupRecordings::VERSION
  spec.authors       = ["Michael Pope"]
  spec.email         = ["michael@dtcorp.com.au"]

  spec.summary       = %q{Cleanup a directory till we have a set amount of space}
  spec.description   = %q{Given an amount of space you want free this will remove recordings until we hit that value.}
  spec.homepage      = "https://github.com/map7/cleanup_recordings"

  # # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  # spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('test-unit')

  spec.add_dependency('methadone', '~> 1.9.2')
  spec.add_dependency('sys-filesystem', '~> 1.1.6')
end
