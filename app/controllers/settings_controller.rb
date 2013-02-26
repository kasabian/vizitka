# ecoding: utf-8
class SettingsController < ApplicationController
  load_and_authorize_resource
  layout  "admin"
  def index
    @setting = Setting.first 
  end

  def update
    @setting = Setting.find(params[:id])
    respond_to do |format|
      if @setting.update_attributes(params[:setting])
        format.html { redirect_to settings_path, notice: 'Сохранено успешно.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end
end
