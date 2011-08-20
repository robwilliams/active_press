require 'spec_helper'

describe ActivePress::Comment do
  it { should belong_to(:post) }
end
