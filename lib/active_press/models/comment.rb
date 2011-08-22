class ActivePress::Comment < ActivePress::Base
  set_table_name "wp_comments"
  set_primary_key "comment_ID"
  
  belongs_to :post, :foreign_key => "comment_post_ID"
  belongs_to :user, :foreign_key => "user_id"
end