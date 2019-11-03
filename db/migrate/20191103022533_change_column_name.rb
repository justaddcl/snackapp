class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_roles, :group_id, :small_group_id
  end
end
