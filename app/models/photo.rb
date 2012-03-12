class Photo
  include Mongoid::Document
  belongs_to :user
  belongs_to :album
end
