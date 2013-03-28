# ecoding: utf-8 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 
  Menu.create("name" => "company","ps_name" =>"About company")
  Menu.create("name" => "services","ps_name" =>"Service")
  Menu.create("name" => "contacts","ps_name" =>"Contacts")
  Menu.create("name" => "exclusive","ps_name" =>"Schematic Design") 
  Menu.create("name" => "design_project","ps_name" =>"Design Project")
  Menu.create("name" => "architecture","ps_name" =>"Architectural and Engineering Design")
  Menu.create("name" => "industrial","ps_name" =>"Indastrial Design") 
  
 
 
  Gallery.create("name"=>"architecture","ps_name" =>"Architecture")
  Gallery.create("name"=>"design","ps_name" =>"Interior Design")
  Gallery.create("name"=>"industrial","ps_name" =>"Indastrial Design")

  Setting.create()
  
  
#   colors
  
  
  Color.create(:name => "In light tones")
  Color.create(:name => "In moderate tones")
  Color.create(:name => "In dark tones")
  Color.create(:name => "The Contrasts")  
  Color.create(:name => "Warm tones (Beige, red, yellow)")
  Color.create(:name => "Cool shades (light blue, dark blue, purple)")  
  Color.create(:name => "Restrained, laconic (color)")  
  Color.create(:name => "Bright, cheerful combination")  
  Color.create(:name => "Not sure")
  
# forms
  
  Form.create(:name => "Massive, solid forms")
  Form.create(:name => "Light, airy constructs")
  Form.create(:name => "Complex, multipart forms")
  Form.create(:name => "Simple lines, no nonsense")  
  Form.create(:name => "Traditional, classic solutions")  
  Form.create(:name => "Modern")
  Form.create(:name => "Mixed")  
  Form.create(:name => "Not sure")
  
# materials
  
  Material.create(:name => "Only natural, ecological materials")
  Material.create(:name => "Depending on the premises")
  Material.create(:name => "Not sure")
  
  
#floors
  
  Floor.create(:name => "High-rise")
  Floor.create(:name => "one-story building")
  Floor.create(:name => "Ground level")
  Floor.create(:name => "Underground level")
  
  
  #engineerings
  
  Engineering.create(:name => "Water supply, sewerage")
  Engineering.create(:name => "Air Conditioning")
  Engineering.create(:name => "Heating")
  Engineering.create(:name => "Electrical networks")
  Engineering.create(:name => "Low voltage network")
  
  
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