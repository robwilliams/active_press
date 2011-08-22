require 'spec_helper'

describe ActivePress::Usermeta do
  it { should belong_to(:user) }
end
