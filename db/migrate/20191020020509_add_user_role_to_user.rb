class AddUserRoleToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_role, :int
    add_index :users, :user_role
  end
end
