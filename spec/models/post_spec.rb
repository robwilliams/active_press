require 'spec_helper'

describe ActivePress::Post do
  it { should have_many(:comments) }
end
