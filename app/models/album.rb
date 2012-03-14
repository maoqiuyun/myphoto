class Album
  
  include Mongoid::Document
  
  field :name, :type => String, :null => false
  field :description, :type => String
  belongs_to :user
  
  has_many :photos
  
end
