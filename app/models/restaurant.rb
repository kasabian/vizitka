class Restaurant < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :appointment_comment, :banqueting_convertible, :banqueting_count, 
   :banqueting_hall, :children_area, :complex_central, :complex_commercial, :complex_guay, :complex_mainly, 
   :complex_mixed, :complex_separate, :complex_suburb, :complex_tourism, :hall_reception, :level_restaurent, 
   :main_aquarium, :main_bar_area, :main_bar_area_ch, :main_bathroom, :main_hall, :main_persons, :main_places, 
   :main_quantity, :main_scene, :main_showcases, :main_showcases_str, :main_terrace, :main_tv, :main_tv_count, 
   :name, :number_storeys, :outdoor, :outdoor_bar, :outdoor_count, :outdoor_greenn, :outdoor_tv, :reception_bathroom, 
   :reception_count, :requir_accounts, :requir_bathroom, :requir_cold_room, :requir_comment, :requir_head_bathroom, 
   :requir_head_office, :requir_kitchen, :requir_kitchen_squere, :requir_locker_room, :requir_quantity, :requir_quantity_count, 
   :requir_separate, :requir_sequrity, :requir_shower, :requir_storge, :requir_storge_sq, :requir_video, :requir_video_bathroom, 
   :requir_visitors, :requir_wine, :separate, :separate, :separate_bathroom, :separate_chillout, :separate_count, :separate_tv, 
   :service_spaces, :total_area, :vip, :vip_bar, :vip_bathroom, :vip_count, :vip_scene, :vip_terrace, :vip_tv,
   :wardrobe, :zone_parking, :customer
  
end
