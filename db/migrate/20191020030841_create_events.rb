class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :event_type
      t.string :event_description
      t.integer :gatherable_id
      t.string :gatherable_type

      t.timestamps
    end
    add_index :events, :event_type
    add_index :events, :event_description
  end
end
