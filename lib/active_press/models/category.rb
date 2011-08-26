class ActivePress::Category < ActivePress::Base
  
  include ActivePress::Taxonomy

  default_scope where(:taxonomy => 'category')
end