class DropPermissions < ActiveRecord::Migration[6.0]
  def change
    drop_table :permissions
  end
end
