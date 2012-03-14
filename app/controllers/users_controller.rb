class UsersController < ApplicationController
  
  inherit_resources
  before_filter :authenticate_user!
  
  def update
    
  end
end
