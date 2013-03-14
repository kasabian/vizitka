class Room < ActiveRecord::Base
  attr_accessible :bar, :chair, :chair_count, :coffee_table, :comment, :cupboard, :desk, :dining_table, :double_beds, :dressing_room, 
  :isolation, :other, :other_fild, :room_name, :room_squere, :sofa, :sofa_count, :stool, :stool_count, :tv, :two_twin_bads, :wc, :wc_squere
  belongs_to :apartment
end
