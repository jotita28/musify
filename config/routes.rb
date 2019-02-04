Rails.application.routes.draw do
  resources :playlists do
    resources :songs, only: [:create, :destroy]
  end
  resources :users


end
