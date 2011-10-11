class ActivePress::Comment < ActivePress::Base
  set_table_name "wp_comments"
  set_primary_key "comment_ID"
  
  belongs_to :post, :foreign_key => "comment_post_ID"
  belongs_to :user, :foreign_key => "user_id"
  has_many :commentmetas, :foreign_key => "comment_id"
  
  def meta
    commentmetas.inject({}) do |hash, commentmeta|
      hash[commentmeta.meta_key.to_sym] = commentmeta.meta_value
      hash
    end
  end
end