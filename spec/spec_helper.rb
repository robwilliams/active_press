require 'active_record'
require 'logger'
require 'shoulda/matchers'
require 'factory_girl'

#ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ":memory:")
ActiveRecord::Migration.verbose = false
load 'test_schema.rb'

require 'active_press' # always load active_press after establishing connection for tests

FactoryGirl.find_definitions