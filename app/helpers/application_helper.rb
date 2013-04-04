module ApplicationHelper
  
  def wicked_pdf_image_tag(img, options={})
    image_tag "file://#{WickedPdfHelper.root_path.join('public'+img)}", options
  end
  
  def yes_no el
     if el == true then 
       return "yes" 
     else 
       return "no"
     end       
  end  
  
 def text_none el
   if (el == nil) or (el == 0) then
     return "none"
   else 
     return el
   end  
 end  
end
