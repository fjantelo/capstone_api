class SongsController < ApplicationController
  before_action :authenticate_user

  # def index
  #   songs = Song.all
  #   render json: songs.as_json
  # end

  # def show
  #   song = Song.find_by(id: params[:id])
  #   render json: song.as_json
  # end

  def create
    song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      genre: params[:genre],
      url: params[:url],
      playlist_id: params[:playlist_id],
      thumbnail: params[:thumbnail],
      channel: params[:channel],
    )
    if song.save
      render json: song.as_json
    else
      render json: { "error": song.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # def update
  #   song = Song.find_by(id: params[:id])
  #   song.title = params[:title] || song.title
  #   song.artist = params[:artist] || song.artist
  #   song.album = params[:album] || song.album
  #   song.genre = params[:genre] || song.genre
  #   song.url = params[:url] || song.url
  #   if song.save
  #     render json: song.as_json
  #   else
  #     render json: { "error": song.errors.full_messages },
  #            status: :unprocessable_entity
  #   end
  # end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { "message": "Song successfully deleted." }
  end

  def search
    if params[:query].include?(" ")
      response = HTTP.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=#{params[:query].gsub!(/\s/, "%")}&type=video&key=#{Rails.application.credentials.youtube_api_key}")
    else
      response = HTTP.get("https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&q=#{params[:query]}&type=video&key=#{Rails.application.credentials.youtube_api_key}")
    end
    render json: response.parse(:json)
  end
end
