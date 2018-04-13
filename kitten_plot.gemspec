# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','kitten_plot','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'kitten_plot'
  s.version = KittenPlot::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','kitten_plot.rdoc']
  s.rdoc_options << '--title' << 'kitten_plot' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'kitten_plot'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.17.1')
end
