Rails.application.routes.draw do
  # Playlist routes
  get "/playlists" => "playlists#index"
  get "/playlists/:id" => "playlists#show"
  post "/playlists" => "playlists#create"
  patch "/playlists/:id" => "playlists#update"
  delete "/playlists/:id" => "playlists#destroy"
end
