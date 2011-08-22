class ActivePress::Postmeta < ActivePress::Base
  set_table_name "wp_postmeta"
  set_primary_key "meta_id"

  belongs_to :post, :foreign_key => "post_id"
end