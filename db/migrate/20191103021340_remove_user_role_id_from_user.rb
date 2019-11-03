class RemoveUserRoleIdFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_index :users, :user_role_id

    remove_column :users, :user_role_id, :int
  end
end
