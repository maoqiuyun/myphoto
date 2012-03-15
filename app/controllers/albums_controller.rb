class AlbumsController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  before_filter :authenticate_user!
  
  def index
    @albums = current_user.albums.order(:updated_at)
  end
  
  def show
    @album = Album.find(params[:id])
    @photos = @album.photos
  end
  
  def create
    @album = current_user.albums.new(params[:album])
    @album.save
    redirect_to album_path(@album),notice: "Access denied"  
  end
end
