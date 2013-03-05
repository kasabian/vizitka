class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :name
      t.references :customer

      t.timestamps
    end
    add_index :floors, :customer_id
  end
end
