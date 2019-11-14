class AddPermissionToUserRole < ActiveRecord::Migration[6.0]
  def change
    add_column :user_roles, :permission_id, :int
    add_index :user_roles, :permission_id
  end
end
