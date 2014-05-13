Kernel.load 'lib/sharrando/version.rb'

Gem::Specification.new { |s|
  s.name          = 'sharrando'
  s.version       = Sharrando::VERSION
  s.author        = 'Giovanni Capuano'
  s.email         = 'webmaster@giovannicapuano.net'
  s.homepage      = 'http://www.giovannicapuano.net'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Get URLs for share things to the social networks.'
  s.description   = 'Get URLs for share things to social networks like Facebook, Twitter, Linkedin, Tumblr, etc.'
  s.licenses      = 'WTFPL'

  s.require_paths = ['lib']
  s.files         = Dir.glob('lib/**/*.rb')
  s.test_files    = Dir.glob('spec/**/*_spec.rb')

  s.add_development_dependency 'rspec', '~> 0'
  s.add_development_dependency 'rake',  '~> 0'
}