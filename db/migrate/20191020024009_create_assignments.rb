class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :user
      t.integer :event

      t.timestamps
    end
    add_index :assignments, :user
    add_index :assignments, :event
  end
end
