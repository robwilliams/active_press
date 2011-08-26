require 'spec_helper'

describe ActivePress::Tag do
  it { should belong_to(:term) }
  it { should have_many(:term_relationships) }
end
