class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :male
      t.string :status
      t.integer :age
      t.text :comment
      t.references :customer

      t.timestamps
    end
    add_index :families, :customer_id
  end
end
