class Gallery < ActiveRecord::Base
  attr_accessible :image, :name, :title, :ps_name
  has_many :images
end
