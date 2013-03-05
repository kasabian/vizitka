class Examplepic < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :comment, :image, :link
  validates :image, :presence => true
  mount_uploader :image, ImageUploader
end
