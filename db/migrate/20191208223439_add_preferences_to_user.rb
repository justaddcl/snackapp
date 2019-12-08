class AddPreferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :favorite_snack, :string
    add_column :users, :dietary_restrictions, :string
  end
end
