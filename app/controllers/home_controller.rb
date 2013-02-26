class HomeController < ApplicationController
  def index
    @menus = Menu.all
    @gallery = Gallery.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menus }
    end
  end
end
