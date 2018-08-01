lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nekos/ver'

Gem::Specification.new do |gem|
  gem.name          = 'nekos'
  gem.version       = NekosLife::VERSION
  gem.date          = '2018-07-27'
  gem.authors       = ['Snazzah']
  gem.email         = 'suggesttosnazzy@gmail.com'
  gem.summary       = 'A gem that utilizes the nekos.life API.'
  gem.description   = 'A gem that utilizes the nekos.life API.'
  gem.files         = Dir['lib/**/*.rb']
  gem.homepage      = 'https://github.com/Nekos-Life/nekos.rb'
  gem.license       = 'MIT'

  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.10'
  gem.add_development_dependency 'inch', '0.8.0'
  gem.add_development_dependency 'rubocop', '0.49.1'

  gem.add_dependency 'rest-client'
end
