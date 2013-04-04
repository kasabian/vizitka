class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :number_storeys
      t.integer :level_restaurent
      t.boolean :separate
      t.integer :total_area
      t.integer :service_spaces
      t.boolean :zone_parking
      t.boolean :hall_reception
      t.integer :reception_count
      t.boolean :children_area
      t.integer :wardrobe
      t.boolean :reception_bathroom
      t.boolean :main_hall
      t.integer :main_persons
      t.integer :main_quantity
      t.boolean :main_bathroom
      t.integer :main_places
      t.boolean :main_showcases
      t.string :main_showcases_str
      t.boolean :main_scene
      t.integer :main_bar_area
      t.boolean :main_bar_area_ch
      t.boolean :main_aquarium
      t.boolean :main_tv
      t.integer :main_tv_count
      t.boolean :main_terrace
      t.boolean :separate
      t.integer :separate_count
      t.integer :separate_chillout
      t.integer :separate_tv
      t.boolean :separate_bathroom
      t.boolean :banqueting_hall
      t.integer :banqueting_count
      t.boolean :banqueting_convertible
      t.boolean :vip
      t.integer :vip_count
      t.boolean :vip_bathroom
      t.boolean :vip_tv
      t.boolean :vip_bar
      t.boolean :vip_scene
      t.boolean :vip_terrace
      t.boolean :outdoor
      t.integer :outdoor_count
      t.boolean :outdoor_tv
      t.boolean :outdoor_bar
      t.boolean :outdoor_greenn
      t.text :appointment_comment
      t.boolean :requir_separate
      t.boolean :requir_bathroom
      t.boolean :requir_kitchen
      t.integer :requir_kitchen_squere
      t.boolean :requir_visitors
      t.boolean :requir_wine
      t.boolean :requir_storge
      t.integer :requir_storge_sq
      t.boolean :requir_quantity
      t.integer :requir_quantity_count
      t.boolean :requir_cold_room
      t.boolean :requir_locker_room
      t.boolean :requir_shower
      t.boolean :requir_accounts
      t.boolean :requir_head_office
      t.boolean :requir_head_bathroom
      t.boolean :requir_sequrity
      t.boolean :requir_video
      t.boolean :requir_video_bathroom
      t.text :requir_comment
      t.boolean :complex_separate
      t.boolean :complex_commercial
      t.boolean :complex_central
      t.boolean :complex_suburb
      t.boolean :complex_guay
      t.boolean :complex_mainly
      t.boolean :complex_tourism
      t.boolean :complex_mixed
      t.references :customer

      t.timestamps
    end
    add_index :restaurants, :customer_id
  end
end
