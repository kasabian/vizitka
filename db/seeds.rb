# ecoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 
  Menu.create("name" => "company","ps_name" =>"О компании ")
  Menu.create("name" => "services","ps_name" =>"Услуги")
  Menu.create("name" => "exclusive","ps_name" =>"Эксклюзивное проектирование") 
  Menu.create("name" => "design_project","ps_name" =>"Дизайн проект")
  Menu.create("name" => "architecture","ps_name" =>"Архитектурное и инженерное проект...")
  Menu.create("name" => "industrial","ps_name" =>"Промышленный дизайн") 
  Menu.create("name" => "contacts","ps_name" =>"Контакты")
 
 
  Gallery.create("name"=>"architecture","ps_name" =>"Архитектура")
  Gallery.create("name"=>"design","ps_name" =>"Дизайн интерьера")
  Gallery.create("name"=>"industrial","ps_name" =>"Промышленный дизайн")

  Setting.create()

