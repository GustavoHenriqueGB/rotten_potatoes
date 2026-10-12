Rails.application.routes.draw do
  resources :movies
  post 'movies/search_tmdb', to: 'movies#search_tmdb', as: 'search_tmdb'
  root to: redirect('/movies')
end