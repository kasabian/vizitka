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
    "index"    : "index"
# ++++++++++Gallery++++++++++++++++++++++++++++
    "architecture_design" : "architecture_design"
    "design" : "design"
    "industrial_design" : "industrial_design"
    ".*"       : "index"
# ++++++++++Menu++++++++++++++++++++++++++++   
  company: ->
    @clear()
    @close_side(@menus.where({"name":"company"})[0])
    @open_side()
 
  services: ->
    a= () ->  
     $(".pod_left_menu").show()
    @close_side(@menus.where({"name":"services"})[0])
    $("#left_side").animate({"margin-left":"-300px"},800,"linear",a)
    $("#right_side").animate({"margin-left":"500px"},800)
    
    
  contacts: ->
   @clear()
   @close_side(@menus.where({"name":"contacts"})[0])
   @open_side()  

  index: ->
   @clear()
   @close_side(@menus.where({"name":"contacts"})[0])
 #+++++++++++++++++pod_menu++++++++++++++++++++  
  exclusive: ->
   str = "Заполнить заявку «эскизное проектирование»"
   $("#order").html(str);
   @close_side(@menus.where({"name":"exclusive"})[0])
   @open_side() 
   
  design_project: ->
   str = "Заполнить заявку «дизайн проект»"
   $("#order").html(str);
   @close_side(@menus.where({"name":"design_project"})[0])
   @open_side()
    
  architecture: ->
   str = "Заполнить заявку на «архитектурное проектирование» <br /><br /> Заполнить заявку на «архитектурное инженерное проектирование»"
   $("#order").html(str);
   @close_side(@menus.where({"name":"architecture"})[0])
   @open_side() 
  
  industrial: ->
   str = "Заполнить заявку «промышленный дизайн»"
   $("#order").html(str);
   @close_side(@menus.where({"name":"industrial"})[0])
   @open_side() 

# ++++++++++Gallery++++++++++++++++++++++++++++
  architecture_design:  ->  
    @clear()  
    @close_side(@gallery.where({"name":"architecture"})[0],"image")
    @open_side()
    
    
  design: ->
    @clear()   
    @close_side(@gallery.where({"name":"design"})[0],"image")
    @open_side()
    
  industrial_design: ->
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
   $("#order").html("")

    
    
