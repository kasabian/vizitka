class GalleryController < ApplicationController
  load_and_authorize_resource
  layout "admin"
  def index
    @gallery_catalogs = Gallery.all
    respond_to do |format|
      format.html 
      format.json { render json: @gallery_cat }
    end
    
  end

   def show
    @gallery = Gallery.find(params[:id]) 
    @images = @gallery.images.order("created_at DESC").all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallary_catalog }
    end 
   end
end
