class Office < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :cafe, :conf_hall, :conf_hall_count, :conf_hall_piple, :dressing, :expert_jr_count, :expert_jr_piple, :expert_jr_room, :expert_room, 
      :expert_room_count, :expert_room_piple, :hall, :hall_count, :hall_wc, :head_cabinet, :head_cabinet_goust, :head_cabinet_piple, :head_count, :head_shower, 
      :head_wc, :more_hall, :operation_hall, :operation_hall_count, :operation_hall_piple, :private_room, :private_room_count, :private_room_piple, :restroom, 
      :restroom_kitchen, :restroom_shower, :restroom_squere, :restroom_wc, :safe, :security_hall, :server_room, :trading_hall, :trading_hall_squere, 
      :trading_specify, :waiting_room, :waiting_room_count, :waiting_room_piple, :warehouse
  
  
  
  
end
