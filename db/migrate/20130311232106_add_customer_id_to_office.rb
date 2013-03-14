class AddCustomerIdToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :customer_id, :integer
  end
end
