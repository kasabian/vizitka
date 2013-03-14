(function($){
			$(window).load(function(){
			    $(".group1").colorbox({rel:'group1', current: "фото {current} из {total}"});                           
			    var h = ($(window).height() - 500)/2;
			    $("#main").css("margin-top",h)				
			    $("#content_1").mCustomScrollbar({scrollButtons:{enable:true}});
			    });			
						
		})(jQuery);
		
setInterval(function()
{
 $(".group1").colorbox({rel:'group1', current: "фото {current} из {total}"});
 var h = ($(window).height() - 500)/2;
 $("#main").css("margin-top",h) 
 $("#content_1").mCustomScrollbar("update")

  
  $(".number").bind("keyup",  function (){
   this.value = this.value.replace(/\D/, '') 
   
  })

 
},500);		
		
		
 

  $(window).load(function(){
   
   $(".click").click(); 
  })
  
  
 
 
