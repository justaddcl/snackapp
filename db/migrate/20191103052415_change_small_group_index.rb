class ChangeSmallGroupIndex < ActiveRecord::Migration[6.0]
  def change
    rename_column :small_groups, :user_role_id, :user_id

    add_foreign_key :small_groups, :users
  end
end
