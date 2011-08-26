class ActivePress::Post < ActivePress::Base
  set_table_name "wp_posts"
  set_primary_key "ID"
  
  has_many :comments, :foreign_key => "comment_post_ID"
  has_many :postmetas, :foreign_key => "post_id"
  has_many :term_relationships, :foreign_key => "object_id"
  has_many :term_taxonomies, :through => :term_relationships
  has_many :categories, :through => :term_relationships
  has_many :tags, :through => :term_relationships

  belongs_to :user, :foreign_key => "post_author"
end