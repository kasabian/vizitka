class FormOneController < ApplicationController
  layout "admin"
  
  def index
    @customer = Customer.new 
    respond_to do |format|
      format.html 
      format.json { render json: @customer }
    end
  end

  def create
    puts "Privet v terminale"
    @customer = Customer.new(params[:customer])
    @customer.check_fild params, @customer.colors, Color, "color_"    
    @customer.check_fild params, @customer.forms, Form, "form_"
    @customer.check_fild params, @customer.materials, Material, "material_"
    @customer.check_fild params, @customer.floors, Floor, "floor_"
    @customer.check_fild params, @customer.engineerings, Engineering, "engineering_"
    @customer.check_fild params, @customer.epcs, Epc, "epc_"
    @customer.check_fild params, @customer.epcbads, Epcbad, "epcbad_"
    respond_to do |format|
      if @customer.save
        format.html { redirect_to home_index_path, notice: 'Ok' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "index" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end  
  end
  
end
