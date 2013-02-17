class Node < ActiveRecord::Base
  has_ancestry

  attr_accessible :ancestry, :name, :position
end
