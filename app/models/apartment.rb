class Apartment < ActiveRecord::Base
  belongs_to :customer
  has_many :rooms
  attr_accessible :customer, :type, :squere, :rooms_attributes, :a_name
  
  accepts_nested_attributes_for :rooms,  :allow_destroy => true
end
