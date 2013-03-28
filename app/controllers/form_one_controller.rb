class FormOneController < ApplicationController
  layout "form"
  
  def index
    @customer = Customer.new 
    respond_to do |format|
      format.html 
      format.json { render json: @customer }
      
    end
  end

  def create
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
	Mailer.send_email(@customer).deliver

        format.html {render "show"}
        format.json { render json: @customer, status: :created, location: @customer }
	
      else
        format.html { render action: "index" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end  
  end
  
  def show
    @customer = Customer.find_by_id(params[:id])
    respond_to do |format|
      format.html 
      format.json { render json: @customer }
      format.pdf   {  render :pdf => "order_#{@customer.id}", :header => { :right => '[page] of [topage]' },  :dpi => '5000' }
    end
    
  end  
  
  
end
