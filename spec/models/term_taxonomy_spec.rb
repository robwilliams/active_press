require 'spec_helper'

describe ActivePress::TermTaxonomy do

  before(:all) {@term_taxonomy = FactoryGirl.build(:term_taxonomy, :term => FactoryGirl.build(:term))}
  subject {@term_taxonomy}

  it { should belong_to(:term) }
  it { should have_many(:term_relationships) }
  
  describe :name do
    subject {@term_taxonomy.name}
    specify { should eql(@term_taxonomy.term.name) }
  end

  describe :slug do
    subject {@term_taxonomy.slug}
    specify { should eql(@term_taxonomy.term.slug) }
  end
end
