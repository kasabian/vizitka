class CreateFormCustomerJoinTable < ActiveRecord::Migration
   def change
    create_table :customers_forms, :id => false do |t|
     t.integer :form_id
     t.integer :customer_id
    end
  end
end
