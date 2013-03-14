class AddANameToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :a_name, :string
  end
end
