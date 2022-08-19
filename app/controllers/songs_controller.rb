class SongsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      genre: params[:genre],
      url: params[:url],
    )
    if song.save
      render json: song.as_json
    else
      render json: { "error": song.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title] || song.title
    song.artist = params[:artist] || song.artist
    song.album = params[:album] || song.album
    song.genre = params[:genre] || song.genre
    song.url = params[:url] || song.url
    if song.save
      render json: song.as_json
    else
      render json: { "error": song.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { "message": "Song successfully deleted." }
  end
end
