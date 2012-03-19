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
    p "xxxxafasfd"
    p params[:photo]
    p "8888" * 10
    @photo = current_user.photos.build(params[:photo])
    p @photo
    p '2w1212121212'
    @photo.save
    p 'rrrrr'
    
    redirect_to album_path(@photo.album)
  end
  
end
