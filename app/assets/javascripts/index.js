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
 $("#content_1").mCustomScrollbar("update")
},500);		
		
		
 