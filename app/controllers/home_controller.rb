class HomeController < ApplicationController
  def index
    @menus = Menu.all
    @gallery = Gallery.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menus }
    end
  end
  
  def admin
    if user_signed_in? then 
       redirect_to settings_path
    else  
      redirect_to new_user_session_path
    end  
  end  
  

  
end
