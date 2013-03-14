class CreateForms1Personals < ActiveRecord::Migration
  def change
    create_table :forms1_personals do |t|
      t.integer :count
      t.string :type
      t.references :customer

      t.timestamps
    end
    add_index :forms1_personals, :customer_id
  end
end
