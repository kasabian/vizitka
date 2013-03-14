class Family < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :age, :comment, :male, :name, :status
end
