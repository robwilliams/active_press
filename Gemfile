source :rubygems

gemspec

gem 'rake'

require 'rbconfig'

if RbConfig::CONFIG['target_os'] =~ /darwin/i
  gem 'rb-fsevent', '>= 0.4.0', :require => false
  gem 'growl_notify', :require => false
end