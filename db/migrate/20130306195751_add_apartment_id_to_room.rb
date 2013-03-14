class AddApartmentIdToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :apartment_id, :integer
  end
end
