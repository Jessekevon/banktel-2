class SessionsController < ApplicationController
	  
	  before_filter :authenticate_user!, :except => [:show, :index]

	def index
	  #rest of class
	end


  def new
  end

end
