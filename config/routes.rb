Rails.application.routes.draw do
  # Playlist routes
  get "/playlists" => "playlists#index"
  get "/playlists/:id" => "playlists#show"
  post "/playlists" => "playlists#create"
  patch "/playlists/:id" => "playlists#update"
  # delete "/playlists/:id" => "playlists#destroy"

  # Song routes
  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"

  # User routes
  post "/users" => "users#create"

  # Session routes
  post "/sessions" => "sessions#create"
end
