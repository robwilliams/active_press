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
      subject { ActivePress::Post.by_post_status('draft') }
      
      it "should only return posts that have the same post_status" do
        subject.to_sql.should include("\"post_status\" = 'draft'")
      end
    end
    
    describe :by_post_type do
      subject { ActivePress::Post.by_post_type('post') }
      
      it "should only return posts that have the same post_type" do
        subject.to_sql.should include("\"post_type\" = 'post'")
      end
    end
    
    describe :before_now do
      subject { ActivePress::Post.before_now.to_sql }
      it "should only return posts that have a post_date_gmt before now" do
        should include("post_date_gmt < '#{Time.now.to_s(:db)}")
      end
    end
    
    describe :published do
      subject { ActivePress::Post.published }
      
      it "should only return posts that have a post_status of 'publish'" do
        subject.to_sql.should include("\"post_status\" = 'publish'")
      end
      
      it "should only return posts that have a post_date before now" do
        subject.to_sql.should include("post_date_gmt < '#{Time.now.to_s(:db)}'")      
      end
    end    
  end
end
