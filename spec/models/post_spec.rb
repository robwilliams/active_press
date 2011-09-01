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
      subject {  ActivePress::Post.by_post_status('draft').to_sql }
      it "should only return posts that have the same post_status" do
        should include("post_status\" = 'draft'")
      end
    end
    
    describe :by_post_type do
      subject { ActivePress::Post.by_post_type('post').to_sql }
      it "should only return posts that have the same post_type" do
        should include("post_type\" = 'post'")
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

      before(:all) do
        @published_post = Factory(
          :post, 
          :post_date_gmt => 3.weeks.ago, 
          :post_status   => 'publish'
        )
      end
      
      it "should return a post that has a post_date_gmt in the past and post_status set to 'publish'" do
        should have(1).post
      end

      it "should not return posts that have a post_date in the future" do
        Factory(
          :post, 
          :post_date_gmt => 3.weeks.from_now, 
          :post_status   => 'publish'
        )
        should have(1).post
      end

      it "should not return posts that do not have post_status set to 'publish'" do
        Factory(
          :post, 
          :post_date_gmt => 3.weeks.ago, 
          :post_status   => 'draft'
        )
        should have(1).post
      end
    end
  end
end
