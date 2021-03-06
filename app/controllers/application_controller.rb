class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Only allow users signed in to acess the site.
  before_action :authenticate_user! 

  def after_sign_in_path_for(user)
     "/pages/modules"
  end

end
