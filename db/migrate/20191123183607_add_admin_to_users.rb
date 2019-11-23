class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    remove_index :user_roles, :permission_id
    remove_column :user_roles, :permission_id, :int
  end
end
