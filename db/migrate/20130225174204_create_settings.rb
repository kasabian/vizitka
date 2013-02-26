class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :email
      t.string :name
      t.string :tag

      t.timestamps
    end
  end
end
