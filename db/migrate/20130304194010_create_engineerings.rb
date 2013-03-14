class CreateEngineerings < ActiveRecord::Migration
  def change
    create_table :engineerings do |t|
      t.string :name
      t.references :customer

      t.timestamps
    end
    add_index :engineerings, :customer_id
  end
end
