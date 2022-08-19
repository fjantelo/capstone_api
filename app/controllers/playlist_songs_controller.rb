class PlaylistSongsController < ApplicationController
  def create
    PlaylistSong.create(playlist_id: params[:playlist_id], song_id: params[:song_id])
    render json: { "message": "Song successfully added to playlist" }
  end

  def destroy
    playlist_song = PlaylistSong.find_by(id: params[:id])
    playlist_song.destroy
    render json: { "message": "Song successfully removed from playlist" }
  end
end
