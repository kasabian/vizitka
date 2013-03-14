class CreateEpcbads < ActiveRecord::Migration
  def change
    create_table :epcbads do |t|
      t.string :image
      t.string :name
      t.references :customer

      t.timestamps
    end
    add_index :epcbads, :customer_id
  end
end
