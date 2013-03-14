class AddCountFloorsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :count_floors, :integer
  end
end
