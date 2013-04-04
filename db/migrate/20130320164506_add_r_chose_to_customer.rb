class AddRChoseToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :r_chose, :boolean
  end
end
