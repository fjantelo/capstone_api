class AddPlaylistIdToSong < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :playlist_id, :integer
  end
end
