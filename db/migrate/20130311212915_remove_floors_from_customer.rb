class RemoveFloorsFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :floors
  end

  def down
    add_column :customers, :floors, :integer
  end
end
