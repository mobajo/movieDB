Rails.application.routes.draw do
  get 'movies/index'

  get 'movies/show/:id', to: 'movies#show', as: :movie

  get 'movies/new', to: 'movies#new'

  post 'movies/create'

  get 'movies/edit'

  get 'movies/update'

  get 'movies/destroy/:id', to: 'movies#destroy', as: :movies_destroy

  root to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
