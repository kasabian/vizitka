# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404123416) do

  create_table "apartments", :force => true do |t|
    t.string   "customer"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "type"
    t.integer  "squere"
    t.string   "a_name"
  end

  add_index "apartments", ["customer_id"], :name => "index_apartments_on_customer_id"

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colors_customers", :id => false, :force => true do |t|
    t.integer "color_id"
    t.integer "customer_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "short_title"
    t.integer  "total_area"
    t.integer  "design_area"
    t.text     "wishes_color"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "tel1"
    t.string   "tel2"
    t.string   "mail1"
    t.string   "mail2"
    t.integer  "curent_floor"
    t.integer  "personal_count"
    t.string   "personal_type"
    t.integer  "guest_max"
    t.integer  "guest_night"
    t.string   "guest_type"
    t.integer  "count_floors"
    t.boolean  "f_chose"
    t.boolean  "h_chose"
    t.boolean  "b_chose"
    t.boolean  "r_chose"
    t.boolean  "s_chose"
  end

  create_table "customers_forms", :id => false, :force => true do |t|
    t.integer "form_id"
    t.integer "customer_id"
  end

  create_table "customers_materials", :id => false, :force => true do |t|
    t.integer "material_id"
    t.integer "customer_id"
  end

  create_table "engineerings", :force => true do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "engineerings", ["customer_id"], :name => "index_engineerings_on_customer_id"

  create_table "epcbads", :force => true do |t|
    t.string   "image"
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "epcbads", ["customer_id"], :name => "index_epcbads_on_customer_id"

  create_table "epcs", :force => true do |t|
    t.string   "image"
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "epcs", ["customer_id"], :name => "index_epcs_on_customer_id"

  create_table "examplepics", :force => true do |t|
    t.string   "image"
    t.text     "comment"
    t.string   "link"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "examplepics", ["customer_id"], :name => "index_examplepics_on_customer_id"

  create_table "families", :force => true do |t|
    t.string   "name"
    t.string   "male"
    t.string   "status"
    t.integer  "age"
    t.text     "comment"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "families", ["customer_id"], :name => "index_families_on_customer_id"

  create_table "floors", :force => true do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "floors", ["customer_id"], :name => "index_floors_on_customer_id"

  create_table "forms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forms1_personals", :force => true do |t|
    t.integer  "count"
    t.string   "type"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "forms1_personals", ["customer_id"], :name => "index_forms1_personals_on_customer_id"

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ps_name"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "gallery_id"
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ps_name"
  end

  create_table "offices", :force => true do |t|
    t.boolean  "hall"
    t.boolean  "hall_wc"
    t.integer  "hall_count"
    t.boolean  "head_cabinet"
    t.integer  "head_cabinet_piple"
    t.integer  "head_cabinet_goust"
    t.boolean  "head_wc"
    t.boolean  "head_shower"
    t.integer  "head_count"
    t.boolean  "waiting_room"
    t.boolean  "waiting_room_piple"
    t.integer  "waiting_room_count"
    t.boolean  "expert_room"
    t.integer  "expert_room_count"
    t.integer  "expert_room_piple"
    t.boolean  "expert_jr_room"
    t.integer  "expert_jr_piple"
    t.integer  "expert_jr_count"
    t.boolean  "conf_hall"
    t.integer  "conf_hall_piple"
    t.integer  "conf_hall_count"
    t.boolean  "private_room"
    t.integer  "private_room_piple"
    t.integer  "private_room_count"
    t.boolean  "operation_hall"
    t.integer  "operation_hall_piple"
    t.integer  "operation_hall_count"
    t.boolean  "restroom"
    t.integer  "restroom_squere"
    t.boolean  "restroom_wc"
    t.boolean  "restroom_shower"
    t.boolean  "restroom_kitchen"
    t.boolean  "trading_hall"
    t.integer  "trading_hall_squere"
    t.text     "trading_specify"
    t.boolean  "more_hall"
    t.boolean  "cafe"
    t.boolean  "dressing"
    t.boolean  "safe"
    t.boolean  "security_hall"
    t.boolean  "server_room"
    t.boolean  "warehouse"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "customer_id"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.integer  "number_storeys"
    t.integer  "level_restaurent"
    t.boolean  "separate"
    t.integer  "total_area"
    t.integer  "service_spaces"
    t.boolean  "zone_parking"
    t.boolean  "hall_reception"
    t.integer  "reception_count"
    t.boolean  "children_area"
    t.integer  "wardrobe"
    t.boolean  "reception_bathroom"
    t.boolean  "main_hall"
    t.integer  "main_persons"
    t.integer  "main_quantity"
    t.boolean  "main_bathroom"
    t.integer  "main_places"
    t.boolean  "main_showcases"
    t.string   "main_showcases_str"
    t.boolean  "main_scene"
    t.integer  "main_bar_area"
    t.boolean  "main_bar_area_ch"
    t.boolean  "main_aquarium"
    t.boolean  "main_tv"
    t.integer  "main_tv_count"
    t.boolean  "main_terrace"
    t.integer  "separate_count"
    t.integer  "separate_chillout"
    t.integer  "separate_tv"
    t.boolean  "separate_bathroom"
    t.boolean  "banqueting_hall"
    t.integer  "banqueting_count"
    t.boolean  "banqueting_convertible"
    t.boolean  "vip"
    t.integer  "vip_count"
    t.boolean  "vip_bathroom"
    t.boolean  "vip_tv"
    t.boolean  "vip_bar"
    t.boolean  "vip_scene"
    t.boolean  "vip_terrace"
    t.boolean  "outdoor"
    t.integer  "outdoor_count"
    t.boolean  "outdoor_tv"
    t.boolean  "outdoor_bar"
    t.boolean  "outdoor_greenn"
    t.text     "appointment_comment"
    t.boolean  "requir_separate"
    t.boolean  "requir_bathroom"
    t.boolean  "requir_kitchen"
    t.integer  "requir_kitchen_squere"
    t.boolean  "requir_visitors"
    t.boolean  "requir_wine"
    t.boolean  "requir_storge"
    t.integer  "requir_storge_sq"
    t.boolean  "requir_quantity"
    t.integer  "requir_quantity_count"
    t.boolean  "requir_cold_room"
    t.boolean  "requir_locker_room"
    t.boolean  "requir_shower"
    t.boolean  "requir_accounts"
    t.boolean  "requir_head_office"
    t.boolean  "requir_head_bathroom"
    t.boolean  "requir_sequrity"
    t.boolean  "requir_video"
    t.boolean  "requir_video_bathroom"
    t.text     "requir_comment"
    t.boolean  "complex_separate"
    t.boolean  "complex_commercial"
    t.boolean  "complex_central"
    t.boolean  "complex_suburb"
    t.boolean  "complex_guay"
    t.boolean  "complex_mainly"
    t.boolean  "complex_tourism"
    t.boolean  "complex_mixed"
    t.integer  "customer_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "restaurants", ["customer_id"], :name => "index_restaurants_on_customer_id"

  create_table "rooms", :force => true do |t|
    t.string   "room_name"
    t.integer  "room_squere"
    t.boolean  "double_beds"
    t.boolean  "two_twin_bads"
    t.boolean  "tv"
    t.boolean  "bar"
    t.boolean  "chair"
    t.integer  "chair_count"
    t.boolean  "sofa"
    t.integer  "sofa_count"
    t.boolean  "desk"
    t.boolean  "cupboard"
    t.boolean  "stool"
    t.integer  "stool_count"
    t.boolean  "wc"
    t.integer  "wc_squere"
    t.boolean  "other"
    t.string   "other_fild"
    t.text     "comment"
    t.boolean  "isolation"
    t.boolean  "dressing_room"
    t.boolean  "coffee_table"
    t.boolean  "dining_table"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "apartment_id"
  end

  create_table "settings", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email2"
  end

  create_table "shops", :force => true do |t|
    t.string   "people_name"
    t.integer  "people_area"
    t.integer  "people_service"
    t.boolean  "specify_clothing"
    t.boolean  "specify_accessories"
    t.boolean  "specify_shoes"
    t.boolean  "specify_perfumes"
    t.boolean  "specify_watch"
    t.boolean  "specify_auto"
    t.boolean  "specify_furniture"
    t.boolean  "specify_sport"
    t.boolean  "specify_music"
    t.boolean  "specify_electronics"
    t.boolean  "specify_homeware"
    t.boolean  "specify_children"
    t.boolean  "specify_art"
    t.boolean  "specify_instrum"
    t.boolean  "specify_products"
    t.text     "specify_comments"
    t.boolean  "el_hall"
    t.integer  "el_hall_count"
    t.boolean  "el_cash"
    t.integer  "el_cash_count"
    t.boolean  "el_main"
    t.boolean  "el_sales"
    t.boolean  "el_bar"
    t.boolean  "el_soft"
    t.integer  "el_soft_count"
    t.boolean  "el_podium"
    t.boolean  "el_fitting"
    t.boolean  "el_plase"
    t.boolean  "el_bathroom"
    t.boolean  "el_children"
    t.boolean  "el_tv"
    t.integer  "el_tv_count"
    t.text     "el_comments"
    t.boolean  "requir_office"
    t.integer  "requir_office_count"
    t.boolean  "requir_separate"
    t.boolean  "requir_sequrity"
    t.boolean  "requir_recreation"
    t.boolean  "requir_head"
    t.text     "requir_comments"
    t.integer  "customer_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "shops", ["customer_id"], :name => "index_shops_on_customer_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
