class PhotosController < ApplicationController
  
  inherit_resources
  load_and_authorize_resource
  
  before_filter :authenticate_user!
  
  def index
    @photos = current_user.photos
  end
  
  def new
    @album_id = params[:album_id]
    new!
  end
  
  def create
    @photo = current_user.photos.build(params[:photo])
    @photo.save
    redirect_to album_path(@photo.album)
  end
  
end
