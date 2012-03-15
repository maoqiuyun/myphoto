class Tag
  
  include Mongoid::Document
  
  has_and_belongs_to_many :photos
  field :name, :type => String, :null => false
end
