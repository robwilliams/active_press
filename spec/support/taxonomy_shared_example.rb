shared_examples_for "a Taxonomy" do
  it { should belong_to(:term) }
  it { should have_many(:term_relationships) }
  it { should have_many(:posts).through(:term_relationships) }
end