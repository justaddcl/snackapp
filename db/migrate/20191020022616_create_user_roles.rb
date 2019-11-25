class CreateUserRoles < ActiveRecord::Migration[6.0]
  def change
    execute <<-DDL
      CREATE TYPE user_role_type AS ENUM (
        'discipleship_community_pastor',
        'discipleship_community_coordinator',
        'small_group_leader',
        'small_group_member',
        'small_group_coordinator'
      );
    DDL

    create_table :user_roles do |t|
      t.integer :user
      t.integer :group

      t.column :type, :user_role_type
      t.timestamps
    end
    add_index :user_roles, :user
    add_index :user_roles, :group
  end
end
