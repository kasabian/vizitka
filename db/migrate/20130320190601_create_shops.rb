class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :people_name
      t.integer :people_area
      t.integer :people_service
      t.boolean :specify_clothing
      t.boolean :specify_accessories
      t.boolean :specify_shoes
      t.boolean :specify_perfumes
      t.boolean :specify_watch
      t.boolean :specify_auto
      t.boolean :specify_furniture
      t.boolean :specify_sport
      t.boolean :specify_music
      t.boolean :specify_electronics
      t.boolean :specify_homeware
      t.boolean :specify_children
      t.boolean :specify_art
      t.boolean :specify_instrum
      t.boolean :specify_products
      t.text :specify_comments
      t.boolean :el_hall
      t.integer :el_hall_count
      t.boolean :el_cash
      t.integer :el_cash_count
      t.boolean :el_main
      t.boolean :el_sales
      t.boolean :el_bar
      t.boolean :el_soft
      t.integer :el_soft_count
      t.boolean :el_podium
      t.boolean :el_fitting
      t.boolean :el_plase
      t.boolean :el_bathroom
      t.boolean :el_children
      t.boolean :el_tv
      t.integer :el_tv_count
      t.text :el_comments
      t.boolean :requir_office
      t.integer :requir_office_count
      t.boolean :requir_separate
      t.boolean :requir_sequrity
      t.boolean :requir_recreation
      t.boolean :requir_head
      t.text :requir_comments
      t.references :customer

      t.timestamps
    end
    add_index :shops, :customer_id
  end
end
