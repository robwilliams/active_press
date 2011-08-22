require 'spec_helper'

describe ActivePress::Comment do
  it { should belong_to(:post) }
  it { should belong_to(:user) }
  it { should have_many(:commentmetas) }
end
