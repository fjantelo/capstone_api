class UserPlaylistsController < ApplicationController
  def index
    user_playlists = UserPlaylist.all
    render json: user_playlists.as_json
  end

  def create
    user_playlist = UserPlaylist.new(user_id: params[:user_id], playlist_id: params[:playlist_id])
    if user_playlist.save
      render json: user_playlist.as_json
    else
      render json: { "error": user_playlist.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    user_playlist = UserPlaylist.find_by(id: params[:id])
    user_playlist.destroy
    render json: { "message": "UserPlaylist successfully deleted." }
  end
end
