class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :customer
      t.references :customer  

      t.timestamps
    end
    add_index :apartments, :customer_id
  end
end
