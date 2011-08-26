require 'spec_helper'

describe ActivePress::Post do
  it { should have_many(:comments) }
  it { should belong_to(:user) }
  it { should have_many(:postmetas) }
  it { should have_many(:term_relationships) }
  it { should have_many(:term_taxonomies).through(:term_relationships) }
  it { should have_many(:categories).through(:term_relationships) }
  it { should have_many(:tags).through(:term_relationships) }
end
