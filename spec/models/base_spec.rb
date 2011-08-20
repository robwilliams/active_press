require 'spec_helper'

describe ActivePress::Base do
  it "should inherit from ActiveRecord::Base" do
    ActivePress::Base.superclass.should eql(ActiveRecord::Base)
  end
end