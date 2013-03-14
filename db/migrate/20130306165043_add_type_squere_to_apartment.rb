class AddTypeSquereToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :type, :string
    add_column :apartments, :squere, :integer
  end
end
