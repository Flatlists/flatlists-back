class AddChangesToTables < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :string
    rename_column :playlists, :song, :songs
  end
end
