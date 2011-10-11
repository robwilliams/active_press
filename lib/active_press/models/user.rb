class ActivePress::User < ActivePress::Base
  set_table_name "wp_users"
  set_primary_key "ID"

  has_many :posts, :foreign_key => "post_author"
  has_many :comments, :foreign_key => "user_id"
  has_many :usermetas, :foreign_key => "user_id"
  
  def meta
    usermetas.inject({}) do |hash, usermeta|
      hash[usermeta.meta_key.to_sym] = usermeta.meta_value
      hash
    end
  end
end