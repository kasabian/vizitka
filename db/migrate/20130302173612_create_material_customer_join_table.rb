class CreateMaterialCustomerJoinTable < ActiveRecord::Migration
  def change
    create_table :customers_materials, :id => false do |t|
     t.integer :material_id
     t.integer :customer_id
    end
  end
end
