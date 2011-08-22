require 'spec_helper'

describe ActivePress::Postmeta do
  it { should belong_to(:post) }
end
