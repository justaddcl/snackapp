class CreateUserRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_roles do |t|
      t.integer :user
      t.integer :role
      t.integer :group

      t.timestamps
    end
    add_index :user_roles, :user
    add_index :user_roles, :role
    add_index :user_roles, :group
  end
end
