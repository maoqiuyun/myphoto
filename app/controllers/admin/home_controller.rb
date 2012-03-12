class Admin::HomeController < ApplicationController
  # before_filter :login_required
  
  def index
    p user_signed_in?
    @users = User.all
  end

end
