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

ActiveRecord::Schema.define(:version => 20130305162051) do

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
    t.integer  "floors"
    t.integer  "curent_floor"
    t.integer  "personal_count"
    t.string   "personal_type"
    t.integer  "guest_max"
    t.integer  "guest_night"
    t.string   "guest_type"
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

  create_table "settings", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
