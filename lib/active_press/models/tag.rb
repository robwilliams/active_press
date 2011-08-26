class ActivePress::Tag < ActivePress::Base
  include ActivePress::Taxonomy
  
  default_scope where(:taxonomy => 'post_tag')
end