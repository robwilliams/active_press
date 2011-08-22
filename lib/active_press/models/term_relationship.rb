class ActivePress::TermRelationship < ActivePress::Base
  set_table_name "wp_term_relationships"

  belongs_to :post, :foreign_key => "object_id"
  belongs_to :term_taxonomy, :foreign_key => "term_taxonomy_id"
end