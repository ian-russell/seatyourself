Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroys]
  resources :restaurants
  resources :users, only: [:new, :create]

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
