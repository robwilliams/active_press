require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new

desc "Open an IRB session preloaded with ActivePress"
task :console do
  sh "irb -rubygems -I lib -r active_press.rb"
end