class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :room_squere
      t.boolean :double_beds
      t.boolean :two_twin_bads
      t.boolean :tv
      t.boolean :bar
      t.boolean :chair
      t.integer :chair_count
      t.boolean :sofa
      t.integer :sofa_count
      t.boolean :desk
      t.boolean :cupboard
      t.boolean :stool
      t.integer :stool_count
      t.boolean :wc
      t.integer :wc_squere
      t.boolean :other
      t.string :other_fild
      t.text :comment
      t.boolean :isolation
      t.boolean :dressing_room
      t.boolean :coffee_table
      t.boolean :dining_table

      t.timestamps
    end
  end
end
