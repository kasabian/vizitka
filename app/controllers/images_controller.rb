# ecoding: utf-8 
class ImagesController < ApplicationController
  load_and_authorize_resource
  def create
   @gallery = Gallery.find(params[:gallery_id])
   @gallery.images.create(params[:image]) 
 
   redirect_to gallery_path(@gallery) 
  end
  
  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to gallery_path(@gallery), notice: 'Изображение удалено успешно.' 
  end  
end
