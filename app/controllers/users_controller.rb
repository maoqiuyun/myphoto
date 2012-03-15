class UsersController < ApplicationController
  
  inherit_resources
  load_and_authorize_resource
  before_filter :authenticate_user!
  
end
