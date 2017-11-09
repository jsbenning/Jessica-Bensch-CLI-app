# coding: utf-8
lib = File.expand_path("../lib",(gold_price.rb))
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gold_price/version"

Gem::Specification.new do |spec|
  spec.name          = "gold-price"
  spec.version       = GoldPrice::VERSION
  spec.authors       = ["Jessica Bensch"]
  spec.email         = ["jessica.bensch11@gmail.com"]

  spec.summary       = %q{Retrieves gold and silver prices.}
  spec.description   = %q{Allows you to retrieve the current price of gold or silver in grams or ounces.}
  spec.homepage      = "https://github.com/lilithlotus/Jessica-Bensch-CLI-app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  #spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #  f.match(%r{^(test|spec|features)/})
  #end

  spec.executables   = ["gold-price"]
  spec.require_paths = ["lib" "lib/gold_price"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
