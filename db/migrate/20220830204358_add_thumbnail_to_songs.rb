class AddThumbnailToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :thumbnail, :string
  end
end
