require "active_record"
require "active_press/version"
require "active_press/models/base"
Dir[File.dirname(__FILE__) + '/active_press/models/*.rb'].each {|file| require file }

