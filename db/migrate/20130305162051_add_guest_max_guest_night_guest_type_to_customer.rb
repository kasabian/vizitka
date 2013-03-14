class AddGuestMaxGuestNightGuestTypeToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :guest_max, :integer
    add_column :customers, :guest_night, :integer
    add_column :customers, :guest_type, :string
  end
end
