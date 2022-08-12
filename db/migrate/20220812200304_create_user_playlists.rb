class CreateUserPlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :user_playlists do |t|
      t.integer :user_id
      t.integer :playlist_id

      t.timestamps
    end
  end
end
