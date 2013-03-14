class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.references :castomer
      t.boolean :hall
      t.boolean :hall_wc
      t.integer :hall_count
      t.boolean :head_cabinet
      t.integer :head_cabinet_piple
      t.integer :head_cabinet_goust
      t.boolean :head_wc
      t.boolean :head_shower
      t.integer :head_count
      t.boolean :waiting_room
      t.boolean :waiting_room_piple
      t.integer :waiting_room_count
      t.boolean :expert_room
      t.integer :expert_room_count
      t.integer :expert_room_piple
      t.boolean :expert_jr_room
      t.integer :expert_jr_piple
      t.integer :expert_jr_count
      t.boolean :conf_hall
      t.integer :conf_hall_piple
      t.integer :conf_hall_count
      t.boolean :private_room
      t.integer :private_room_piple
      t.integer :private_room_count
      t.boolean :operation_hall
      t.integer :operation_hall_piple
      t.integer :operation_hall_count
      t.boolean :restroom
      t.integer :restroom_squere
      t.boolean :restroom_wc
      t.boolean :restroom_shower
      t.boolean :restroom_kitchen
      t.boolean :trading_hall
      t.integer :trading_hall_squere
      t.text :trading_specify
      t.boolean :more_hall
      t.boolean :cafe
      t.boolean :dressing
      t.boolean :safe
      t.boolean :security_hall
      t.boolean :server_room
      t.boolean :warehouse

      t.timestamps
    end
    add_index :offices, :castomer_id
  end
end
