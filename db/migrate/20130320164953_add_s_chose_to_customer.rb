class AddSChoseToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :s_chose, :boolean
  end
end
