require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new

desc "Prepares a sample version of the wordpress database to test against"
task :prepare_test_database do
  %x{mysql -e 'create database wordpress_test;' >/dev/null}
end