class CreateColorCustomerJoinTable < ActiveRecord::Migration
  def change
    create_table :colors_customers, :id => false do |t|
     t.integer :color_id
     t.integer :customer_id
    end
  end
end
