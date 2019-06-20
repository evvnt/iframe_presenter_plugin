lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "iframe_presenter_plugin"
  spec.version       = '0.0.1'
  spec.authors       = ["Kurt Grafius"]
  spec.email         = ["kurtg@voomify.com"]

  spec.summary       = %q{Simple plugin for supporting iFrame in presenters }
  spec.homepage      = "http://github.com/geotix/iframe_presenters_plugin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
