class ActivePress::Usermeta < ActivePress::Base
  set_table_name "wp_usermeta"
  set_primary_key "umeta_id"

  belongs_to :user, :foreign_key => "user_id"
end