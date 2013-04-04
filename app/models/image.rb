class Image < ActiveRecord::Base
  attr_accessible :image, :title
  belongs_to :gallery
  validates :image, :presence => true
  
  mount_uploader :image, ImageUploader
end
