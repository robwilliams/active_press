require 'spec_helper'

describe ActivePress::Post do
  it { should have_many(:comments) }
  it { should belong_to(:user) }
  it { should have_many(:postmetas) }
  it { should have_many(:term_relationships) }
  it { should have_many(:term_taxonomies).through(:term_relationships) }
  it { should have_many(:categories).through(:term_relationships) }
  it { should have_many(:tags).through(:term_relationships) }
  
  context :scope do
    describe :by_post_status do
      subject { by_post_status('draft') }
      it "should only return posts that have the same post_status"
    end
    
    describe :by_post_type do
      subject { by_post_type('post') }
      it "should only return posts that have the same post_type"
    end
    
    describe :published do
      subject { published }
      it "should only return posts that have a post_status of 'publish'"
      it "should only return posts that have a post_date before now"
    end    
  end
end
