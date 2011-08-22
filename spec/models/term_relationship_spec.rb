require 'spec_helper'

describe ActivePress::TermRelationship do
  it { should belong_to(:post) }
  it { should belong_to(:term_taxonomy) }
end
