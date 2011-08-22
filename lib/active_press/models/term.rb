class ActivePress::Term < ActivePress::Base
  set_table_name "wp_terms"
  set_primary_key "term_id"

  has_one :term_taxonomy, :foreign_key => "term_id"
end