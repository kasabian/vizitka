class Engineering < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :name
  
end
