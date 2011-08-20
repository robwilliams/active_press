require 'active_press'
require 'logger'
require 'shoulda/matchers'

#ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ":memory:")
ActiveRecord::Migration.verbose = false
load 'support/schema.rb'