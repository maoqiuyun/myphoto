class Admin::HomeController < ApplicationController
  
  def index
    @users = User.all
  end

end
