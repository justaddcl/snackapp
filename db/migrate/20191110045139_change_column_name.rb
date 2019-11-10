class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :discipleship_communities, :discipleship_community_night, :night
    rename_column :event_types, :event_type_description, :description
    rename_column :events, :event_description, :description
    rename_column :roles, :role_description, :description
  end
end
