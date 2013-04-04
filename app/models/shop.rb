class Shop < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :el_bar, :el_bathroom, :el_cash, :el_cash_count, :el_children, :el_comments, :el_fitting,
                  :el_hall, :el_hall_count, :el_main, :el_plase, :el_podium, :el_sales, :el_soft, :el_soft_count, 
		   :el_tv, :el_tv_count, :people_area, :people_name, :people_service, :requir_comments, 
		   :requir_head, :requir_office, :requir_office_count, :requir_recreation, :requir_separate, 
		   :requir_sequrity, :specify_accessories, :specify_art, :specify_auto, :specify_children,
		   :specify_clothing, :specify_comments, :specify_electronics, :specify_furniture, :specify_homeware, 
		   :specify_instrum, :specify_music, :specify_perfumes, :specify_products, :specify_shoes, :specify_sport, :specify_watch
end
