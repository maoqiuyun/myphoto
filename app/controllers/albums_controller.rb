class AlbumsController < ApplicationController
  inherit_resources
  
  def new
    # @album = current_user.albums.new
  end
  
  def create
    @album = current_user.albums.new(params[:album])
    @album.save
    redirect_to album_path(@album),notice: "Access denied"  
  end
end
