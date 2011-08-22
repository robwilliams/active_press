require 'spec_helper'

describe ActivePress::Term do
  it { should have_one(:term_taxonomy) }
end
