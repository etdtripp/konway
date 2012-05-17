# -*- encoding: utf-8 -*-
require File.expand_path('../lib/konway/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dave Edelhart, Dan Tripp"]
  gem.email         = ["dedelhart@exacttarget.com, dtripp@exacttarget.com"]
  gem.description   = %q{Twitter and Facebook message generator}
  gem.summary       = %q{Useful for testing and generally improving the quality of Facebook and Twitter postings}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "konway"
  gem.require_paths = ["lib"]
  gem.version       = Konway::VERSION
end
