class PlaylistsController < ApplicationController
  before_action :authenticate_user

  def index
    playlists = current_user.playlists
    render json: playlists.as_json
  end

  def show
    @playlist = current_user.playlists.find_by(id: params[:id])
    # songs = playlist.songs
    # users = playlist.users
    # output = []
    # output << playlist
    # output << songs
    # output << users
    # render json: output.as_json
    render :show
  end

  def create
    playlist = Playlist.new(
      name: params[:name],
      description: params[:description],
    )
    if playlist.save
      UserPlaylist.create(user_id: current_user.id, playlist_id: playlist.id)
      render json: playlist.as_json
    else
      render json: { "error": playlist.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # def update
  #   playlist = current_user.playlists.find_by(id: params[:id])
  #   playlist.name = params[:name] || playlist.name
  #   playlist.description = params[:description] || playlist.description
  #   if playlist.save
  #     render json: playlist.as_json
  #   else
  #     render json: { "error": playlist.errors.full_messages },
  #            status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   playlist = current_user.playlists.find_by(id: params[:id])
  #   playlist.destroy
  #   render json: { "message": "Playlist successfully deleted." }
  # end
end
