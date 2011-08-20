require 'active_press'
require 'logger'

#ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => ":memory:")
ActiveRecord::Migration.verbose = false
load 'support/schema.rb'