class ChangeColumnsInSongsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :channel, :string
  end
end
