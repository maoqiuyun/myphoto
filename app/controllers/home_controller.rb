class HomeController < ApplicationController
  
  layout 'home'
  
  def index
    @photos = Photo.all
  end
  
end
