class ActivePress::Post < ActivePress::Base
  set_table_name "wp_posts"
  set_primary_key "ID"
  
  has_many :comments,           :foreign_key => "comment_post_ID"
  has_many :postmetas,          :foreign_key => "post_id"
  has_many :term_relationships, :foreign_key => "object_id"
  has_many :term_taxonomies,    :through => :term_relationships
  has_many :categories,         :through => :term_relationships
  has_many :tags,               :through => :term_relationships

  belongs_to :user,             :foreign_key => "post_author"

  scope :by_post_status, lambda {|status| where(:post_status => status) }
  scope :by_post_type,   lambda {|type|   where(:post_type => type) }
  scope :before_now,     lambda { where("post_date_gmt < ?", Time.now.to_s(:db)) }
  scope :published,      by_post_status('publish').before_now
  scope :most_recent,    order("post_date_gmt DESC")
  
  def to_param
    post_name
  end
  
  def meta
    postmetas.inject({}) do |hash, postmeta|
      hash[postmeta.meta_key.to_sym] = postmeta.meta_value
      hash
    end
  end
end