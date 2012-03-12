class Album
  include Mongoid::Document
  # before_create :set_user
  
  field :name, :type => String, :null => false
  
  belongs_to :user
  has_many :photos
  
end
