class CreateSmallGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :small_groups do |t|
      t.integer :user_role_id
      t.integer :discipleship_community_id

      t.timestamps
    end
    add_index :small_groups, :user_role_id
    add_index :small_groups, :discipleship_community_id
  end
end
