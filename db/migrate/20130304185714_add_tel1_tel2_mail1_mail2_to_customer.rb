class AddTel1Tel2Mail1Mail2ToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :tel1, :string
    add_column :customers, :tel2, :string
    add_column :customers, :mail1, :string
    add_column :customers, :mail2, :string
  end
end
