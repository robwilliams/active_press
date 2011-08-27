module ActivePress
  module Taxonomy
    
    def self.included(base)
      base.instance_eval do
        set_table_name "wp_term_taxonomy"
        set_primary_key "term_taxonomy_id"
        
        belongs_to :term, :foreign_key => "term_id"
        has_many :term_relationships, :foreign_key => "term_taxonomy_id"
        
        delegate :name, :to => :term
        delegate :slug, :to => :term
      end
    end
  end
end