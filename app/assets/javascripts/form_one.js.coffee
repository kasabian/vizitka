# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

 add_family_fild = () ->
  str = @value  
  @value = @value.replace(/\D/, '')
  if (@value != "") and (@value != "0")
   number = parseInt(str, 10 );
   $(".family_filds").remove()
   if number <= 50 
    for i in [1..number]   
     $(".family_add").click()
   else
    alert "wrong number"
    @value = "1"
    @add_family_fild()
  else 
   $(".family_filds").remove()
   
 only_number = () ->
  @value = @value.replace(/\D/, '')
  

 $(".family_count").bind("keyup", add_family_fild)
 $(".number").bind("keyup",  only_number)