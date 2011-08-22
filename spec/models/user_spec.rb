require 'spec_helper'

describe ActivePress::User do
  it { should have_many(:posts) }
  it { should have_many(:comments) }
end
