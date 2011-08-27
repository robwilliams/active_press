require 'spec_helper'

describe ActivePress::Base do
  
  describe :superclass do
    subject { ActivePress::Base.superclass }
    specify { should be(ActiveRecord::Base) }
  end
end