class ChangeColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :assignments, :event, :event_id
    rename_column :assignments, :user, :user_id
    rename_column :events, :event_type, :event_type_id
    rename_column :user_roles, :group, :group_id
    rename_column :user_roles, :role, :role_id
    rename_column :user_roles, :user, :user_id
    rename_column :users, :user_role, :user_role_id
  end
end
