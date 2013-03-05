class AddPersonalCountPersonalTypeToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :personal_count, :integer
    add_column :customers, :personal_type, :string
  end
end
