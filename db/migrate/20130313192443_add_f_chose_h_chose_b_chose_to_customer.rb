class AddFChoseHChoseBChoseToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :f_chose, :boolean
    add_column :customers, :h_chose, :boolean
    add_column :customers, :b_chose, :boolean
  end
end
