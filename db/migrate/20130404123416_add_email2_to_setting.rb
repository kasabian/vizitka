class AddEmail2ToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :email2, :string
  end
end
