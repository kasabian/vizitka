class AddPsNameToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :ps_name, :string
  end
end
