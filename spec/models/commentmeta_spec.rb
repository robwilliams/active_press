require 'spec_helper'

describe ActivePress::Commentmeta do
  it { should belong_to(:comment) }
end
