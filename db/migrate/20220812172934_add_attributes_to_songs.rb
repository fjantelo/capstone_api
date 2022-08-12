class AddAttributesToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :title, :string
    add_column :songs, :artist, :string
    add_column :songs, :album, :string
    add_column :songs, :genre, :string
    add_column :songs, :url, :string
  end
end
