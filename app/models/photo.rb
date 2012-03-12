class Photo
  include Mongoid::Document
  belongs_to :user
  belongs_to :album
  
  field :name, :type => String, :null => false
  field :image, :type => String
  
  mount_uploader :image, ImageUploader
  
end
