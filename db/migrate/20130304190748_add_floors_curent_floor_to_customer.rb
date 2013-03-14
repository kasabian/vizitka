class AddFloorsCurentFloorToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :floors, :integer
    add_column :customers, :curent_floor, :integer
  end
end
