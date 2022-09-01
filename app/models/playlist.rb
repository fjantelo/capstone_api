class Playlist < ApplicationRecord
  has_many :user_playlists
  has_many :users, through: :user_playlists
  # has_many :playlist_songs
  # has_many :songs, through: :playlist_songs
  has_many :songs
  validates :name, presence: true
  validates :description, presence: true
end
