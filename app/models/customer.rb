class Customer < ActiveRecord::Base
  attr_accessible :address, :design_area, :name, :short_title, :total_area, :wishes_color
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :forms
  has_and_belongs_to_many :materials
  
  def check_fild_color params
     self.colors.clear
     colors = Color.all      
     colors.each do |color|
      self.colors << color if params["color_#{color.id}"] != nil
     end  
  end  
  
  def check_fild_form params
     self.forms.clear
     forms = Form.all      
     forms.each do |form|
      self.forms << form if params["form_#{form.id}"] != nil
     end  
  end 
  
    def check_fild_material params
     self.materials.clear       
     Material.all.each do |material|
      self.materials << material if params["material_#{material.id}"] != nil
     end  
  end 
end
