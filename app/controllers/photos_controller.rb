class PhotosController < ApplicationController
  inherit_resources
  def index
    @photos = Photo.all
  end
  
end
