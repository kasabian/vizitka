class RemoveCastomerIdFromOffice < ActiveRecord::Migration
  def up
    remove_column :offices, :castomer_id
  end

  def down
    add_column :offices, :castomer_id, :integer
  end
end
