class ChangeDiscipleshipCommunityIndex < ActiveRecord::Migration[6.0]
  def change
    rename_column :discipleship_communities, :user_role_id, :user_id
  end
end
