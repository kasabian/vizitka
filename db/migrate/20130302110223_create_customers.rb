class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :short_title
      t.integer :total_area
      t.integer :design_area
      t.text :wishes_color

      t.timestamps
    end
  end
end
