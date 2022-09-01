class UserPlaylistsController < ApplicationController
  before_action :authenticate_user

  def create
    new_user = User.find_by(email: params[:email])
    user_playlist = UserPlaylist.new(user_id: new_user.id, playlist_id: params[:playlist_id])
    if user_playlist.save
      output = []
      output << user_playlist
      output << { name: new_user.name, id: new_user.id, email: new_user.email }
      render json: output.as_json
    else
      render json: { "error": user_playlist.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    user_playlist = UserPlaylist.find_by(user_id: params[:user_id], playlist_id: params[:playlist_id])
    user_playlist.destroy
    render json: { "message": "UserPlaylist successfully deleted." }
  end
end
