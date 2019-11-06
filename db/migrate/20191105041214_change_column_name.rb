class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :small_groups, :user_id, :leader_id
    rename_column :discipleship_communities, :user_id, :pastor_id
  end
end
