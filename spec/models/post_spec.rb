require 'spec_helper'

describe ActivePress::Post do
  it { should have_many(:comments) }
  it { should belong_to(:user) }
  it { should have_many(:postmetas) }
end
