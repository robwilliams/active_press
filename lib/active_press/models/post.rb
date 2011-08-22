class ActivePress::Post < ActivePress::Base
  set_table_name "wp_posts"
  set_primary_key "ID"
  
  has_many :comments, :foreign_key => "comment_post_ID"
  belongs_to :user, :foreign_key => "post_author"
end