class Epc < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :image, :name
end
