class ActivePress::Commentmeta < ActivePress::Base
  set_table_name "wp_commentmeta"
  set_primary_key "meta_id"

  belongs_to :comment, :foreign_key => "comment_id"
end