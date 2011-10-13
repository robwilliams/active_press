require 'active_record'
require 'active_press/version'

module ActivePress
  autoload :Taxonomy, 'active_press/taxonomy'

  autoload :Base, 'active_press/models/base'
  autoload :Category, 'active_press/models/category'
  autoload :Comment, 'active_press/models/comment'
  autoload :Commentmeta, 'active_press/models/commentmeta'
  autoload :Link, 'active_press/models/link'
  autoload :Option, 'active_press/models/option'
  autoload :Post, 'active_press/models/post'
  autoload :Postmeta, 'active_press/models/postmeta'
  autoload :Tag, 'active_press/models/tag'
  autoload :Term, 'active_press/models/term'
  autoload :TermRelationship, 'active_press/models/term_relationship'
  autoload :TermTaxonomy, 'active_press/models/term_taxonomy'
  autoload :User, 'active_press/models/user'
  autoload :Usermeta, 'active_press/models/usermeta'
end
