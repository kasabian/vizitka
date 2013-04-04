# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
 $("#f").hide()
 $("#b").hide()
 $("#h").hide()
 $("#r").hide()
 $("#s").hide()
 
 add_family_fild = () ->
  str = @value  
  @value = @value.replace(/\D/, '')
  if (@value != "") and (@value != "0")
   number = parseInt(str, 10 );
   $(".family_filds").remove()
   if number <= 50 
    for i in [1..number]   
     $(".family_add").click()
     $(".number").bind("keyup",  only_number)
   else
    alert "wrong number"
    @value = "1"
    @add_family_fild()
  else 
   $(".family_filds").remove()
  
  
  
  
 add_apartment_fild = () ->
  str = @value  
  @value = @value.replace(/\D/, '')
  if (@value != "") and (@value != "0")
   number = parseInt(str, 10 );
   $(".apartments_filds").remove()
   if number <= 50 
    for i in [1..number]   
     $(".apartments_add").click()
     $(".number").bind("keyup",  only_number)
   else
    alert "wrong number"
    @value = "1"
    @add_family_fild()
  else 
   $(".apartments_filds").remove()  
  
  
  
 only_number = () ->
  @value = @value.replace(/\D/, '')
  
 
 
 change_f_block = () ->
  if $("#f_chose").is(':checked') == true
   $("#f").show()
  else
   $("#f").hide()
   
   
 change_h_block = () ->
  if $("#h_chose").is(':checked') == true
   $("#h").show()
  else
   $("#h").hide()
   
 change_b_block = () ->
  if $("#b_chose").is(':checked') == true
   $("#b").show()
  else
   $("#b").hide()
 
 change_r_block = () ->
  if $("#r_chose").is(':checked') == true
   $("#r").show()
  else
   $("#r").hide()
   
 change_s_block = () ->
  if $("#s_chose").is(':checked') == true
   $("#s").show()
  else
   $("#s").hide() 
 
 $("#f_chose").bind("click", change_f_block)
 $("#b_chose").bind("click", change_b_block)
 $("#h_chose").bind("click", change_h_block)
 $("#r_chose").bind("click", change_r_block)
 $("#s_chose").bind("click", change_s_block)
 
 
 $(".family_count").bind("keyup", add_family_fild)
 $(".apartments_count").bind("keyup", add_apartment_fild)
 $(".number").bind("keyup",  only_number)