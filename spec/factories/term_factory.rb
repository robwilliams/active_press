FactoryGirl.define do
  factory :term, :class => ActivePress::Term do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:slug) {|n| "slug-#{n}" }
  end
end