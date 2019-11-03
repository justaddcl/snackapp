class CreateDiscipleshipCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :discipleship_communities do |t|
      t.integer :user_role_id
      t.string :discipleship_community_night

      t.timestamps
    end
    add_index :discipleship_communities, :user_role_id
  end
end
