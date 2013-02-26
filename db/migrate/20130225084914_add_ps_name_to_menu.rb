class AddPsNameToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :ps_name, :string
  end
end
