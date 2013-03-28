class Vizitka.Routers.MenusRouter extends Backbone.Router
  initialize: (options) ->
    @menus = new Vizitka.Collections.MenusCollection()
    @gallery = new Vizitka.Collections.GallerysCollection()
    @menus.reset options.menus
    @gallery.reset options.gallery
    
  routes:  
    "exclusive" : "exclusive"
    "design_project" : "design_project"
    "architecture" : "architecture"
    "industrial" : "industrial"
    "company"  : "company"
    "services" : "services"
    "contacts" : "contacts"
    "orders"    : "orders"
    "index"    : "index"
# ++++++++++Gallery++++++++++++++++++++++++++++
    "architecture_design" : "architecture_design"
    "design" : "design"
    "industrial_design" : "industrial_design"
    ".*"       : "index"
# ++++++++++Menu++++++++++++++++++++++++++++   
  orders: ->    
    @clear()
    a= () ->  
     $("#content h4").html("")
     $("#content .content_text").html("")
     $(".order").show()   
     
    $("#left_side").animate({"margin-left":"-50px"},800,"linear",a)
    $("#right_side").animate({"margin-left":"250px"},800)
    @open_side()
  
  company: ->
    $(".order").hide()
    @clear()
    @close_side(@menus.where({"name":"company"})[0])
    @open_side()
 
  services: ->
    $(".order").hide()
    a= () ->  
     $(".pod_left_menu").show()
    @close_side(@menus.where({"name":"services"})[0])
    $("#left_side").animate({"margin-left":"-300px"},800,"linear",a)
    $("#right_side").animate({"margin-left":"500px"},800)
    
    
  contacts: ->
   $(".order").hide()
   @clear()
   @close_side(@menus.where({"name":"contacts"})[0])
   @open_side()  

  index: ->
   $(".order").hide()
   @clear()
   @close_side(@menus.where({"name":"contacts"})[0])
 #+++++++++++++++++pod_menu++++++++++++++++++++  
  exclusive: ->
   $(".order").hide()
   str = "<a href = '/form_one'>Заполнить заявку «эскизное проектирование»</a>"
   $("#order").html(str);
   @close_side(@menus.where({"name":"exclusive"})[0])
   @open_side() 
   
  design_project: ->
   $(".order").hide()
   str = "<a href = '/form_one'>Заполнить заявку «дизайн проект»</a>"
   $("#order").html(str);
   @close_side(@menus.where({"name":"design_project"})[0])
   @open_side()
    
  architecture: ->
   $(".order").hide()
   str = "<a href = '/form_one'> Заполнить заявку на «архитектурное проектирование» <br /><br /> Заполнить заявку на «архитектурное инженерное проектирование» </a>"
   $("#order").html(str);
   @close_side(@menus.where({"name":"architecture"})[0])
   @open_side() 
  
  industrial: ->
   $(".order").hide()
   str = "<a href = '/form_one'> Заполнить заявку «промышленный дизайн»</a>"
   $("#order").html(str);
   @close_side(@menus.where({"name":"industrial"})[0])
   @open_side() 

# ++++++++++Gallery++++++++++++++++++++++++++++
  architecture_design:  ->
    $(".order").hide()
    @clear()  
    @close_side(@gallery.where({"name":"architecture"})[0],"image")
    @open_side()
    
    
  design: ->
    $(".order").hide()
    @clear()   
    @close_side(@gallery.where({"name":"design"})[0],"image")
    @open_side()
    
  industrial_design: ->
    $(".order").hide()
    @clear()   
    @close_side(@gallery.where({"name":"industrial"})[0],"image")
    @open_side() 

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  change_image: (m)->
    $("#content h4").html(m.get("ps_name"))
    $("#content .content_text").html("")
    f = (i) ->
     image_html = "<a class=\"group1 cboxElement \"  href='#{i.get("image").url}'><img src='#{i.get("image").url}' width='170' alt='#{i.get("title")}' ></a>"  
     $("#content .content_text").append(image_html)
    m.images.each(f)
  
  change_text: (m)->
    $("#content h4").html(m.get("title");)
    $("#content .content_text").html(m.get("content");)
    true
  
  close_side:(m,type) ->
    
    f = @change_text
    if (type=="image") 
     f = @change_image
    
    a = () ->
      f(m)
    $("#left_side").animate({"margin-left":"-50px"},800,"linear",a)
    $("#right_side").animate({"margin-left":"250px"},800)
  
  open_side: () ->
    $("#left_side").animate({"margin-left":"-300px"},800)
    $("#right_side").animate({"margin-left":"500px"},800)
    
  clear: ()->
   $(".pod_left_menu").hide()
   str = "<a href = '#orders'>Fill in the application form</a>"
   $("#order").html(str);
#    $("#order").html("")

    
    
