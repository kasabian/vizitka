class CreateExamplepics < ActiveRecord::Migration
  def change
    create_table :examplepics do |t|
      t.string :image
      t.text :comment
      t.string :link
      t.references :customer

      t.timestamps
    end
    add_index :examplepics, :customer_id
  end
end
