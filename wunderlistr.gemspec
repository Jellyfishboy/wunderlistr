lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name        = "wunderbar-wunderlist"
  gem.version     = Wunderlistr::VERSION
  gem.authors     = ["Tom Dallimore"]
  gem.email       = ["tom.alan.dallimore@gmail.com"]
  gem.description = "A Ruby wrapper for the Wunderlist API "
  gem.summary     = "A Ruby wrapper for the Wunderlist API."
  gem.homepage    = "https://github.com/Jellyfishboy/wunderlistr"

  gem.add_development_dependency 'shoulda',   ">= 2.11.0"
  gem.add_development_dependency 'fakeweb',   ">= 1.3.0"
  gem.add_development_dependency 'rdoc',      "~> 4.0.1"
  gem.add_development_dependency 'crack',     ">= 0"
  gem.add_development_dependency 'rake',      "~> 10.0.0"
  gem.add_development_dependency 'test-unit', "~> 2.5.5"
  gem.add_development_dependency 'vcr',       "~> 2.5.0"
  gem.add_development_dependency 'pry'

  gem.add_dependency 'httparty', '~> 0.8.3'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
end