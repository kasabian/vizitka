class CreateEpcs < ActiveRecord::Migration
  def change
    create_table :epcs do |t|
      t.string :image
      t.string :name
      t.references :customer

      t.timestamps
    end
    add_index :epcs, :customer_id
  end
end
