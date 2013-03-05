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
  
  
#   colors
  
  
  Color.create(:name => "Светлые тона")
  Color.create(:name => "Средняя Гамма")
  Color.create(:name => "Темные тона")
  Color.create(:name => "Контраст")
  Color.create(:name => "Не уверен")
  
# forms
  
  Form.create(:name => "Массивные, основательные формы")
  Form.create(:name => "Лёгкие, воздушные конструктивы")
  Form.create(:name => "Не уверен")
  
# materials
  
  Material.create(:name => "Только натуральные, экологические материалы")
  Material.create(:name => "В зависимости от помещений")
  Material.create(:name => "Не уверен")
  
  
#floors
  
  Floor.create(:name => "Многоэтажное")
  Floor.create(:name => "Одноэтажное")
  Floor.create(:name => "Цокольный уровень")
  Floor.create(:name => "Подземный уровень")
  
  
  #engineerings
  
  Engineering.create(:name => "Водопровод, канализация")
  Engineering.create(:name => "Кондиционирование")
  Engineering.create(:name => "Отопление")
  Engineering.create(:name => "Электрические сети")
  Engineering.create(:name => "Слаботочные сети")
  
  
  #epc (example picture checks)
  
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epc.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  
    #epcbad (example picture checks bad)
  
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")
  Epcbad.create(:name => "pic1",:image => "/images/ohoopee1.jpg")