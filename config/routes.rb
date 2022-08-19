Rails.application.routes.draw do
  # Playlist routes
  get "/playlists" => "playlists#index"
  get "/playlists/:id" => "playlists#show"
  post "/playlists" => "playlists#create"
  # patch "/playlists/:id" => "playlists#update"
  # delete "/playlists/:id" => "playlists#destroy"

  # Song routes
  # get "/songs" => "songs#index"
  # get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  # patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"

  # User routes
  post "/users" => "users#create"

  # Session routes
  post "/sessions" => "sessions#create"

  # PlaylistSongs routes
  # post "/playlist_songs" => "playlist_songs#create"
  # delete "/playlist_songs/:id" => "playlist_songs#destroy"

  #UserPlaylists routes
  post "/user_playlists" => "user_playlists#create"
  delete "/user_playlists/:id" => "user_playlists#destroy"
end
