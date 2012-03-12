class Album
  include Mongoid::Document
  
  field :name, :type => String, :null => false
  
  belongs_to :user
  has_many :photos
end
