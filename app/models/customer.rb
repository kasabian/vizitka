class Customer < ActiveRecord::Base
  attr_accessible :address, :design_area, :name, :short_title, :total_area, :wishes_color, :tel1, :tel2, :mail1, :mail2, :count_floors, :curent_floor,:examplepics_attributes,
   :familys_attributes, :apartments_attributes,:personal_type,:personal_count, :guest_max, :guest_night, :guest_type, :offices_attributes, :restaurants_attributes,
   :f_chose, :h_chose, :b_chose, :r_chose, :s_chose, :shops_attributes 
  
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :forms
  has_and_belongs_to_many :materials
  has_many :floors
  has_many :engineerings
  has_many :examplepics
  has_many :epcs
  has_many :epcbads
  has_many :familys
  has_many :apartments
  has_many :offices
  has_many :restaurants
  has_many :shops
  accepts_nested_attributes_for :examplepics, :familys, :offices, :apartments, :restaurants, :shops,  :allow_destroy => true
    
  validates :name, :mail1,  :presence => true  
  
  
  def check_fild params, self_objects, check_objects, str_val 
   self_objects.clear
     o = check_objects.all      
     o.each do |obj|
      self_objects<< obj if params[str_val+obj.id.to_s] != nil
     end  
  end  
  
 
end
