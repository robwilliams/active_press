FactoryGirl.define do
  factory :post, :class => ActivePress::Post do
    post_title              'Title of the post'
    post_content            'Content of the post'
    post_content_filtered   'Content of the post filtered'
    post_excerpt            'Excerpt of the post'
    to_ping                 false
    pinged                  false
    post_date               Time.now
    post_date_gmt           Time.now
    post_modified           Time.now
    post_modified_gmt       Time.now
  end
end