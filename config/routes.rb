Rails.application.routes.draw do
  resources :restaurants
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :reservations, only: [:index, :show, :destroy, :update, :edit]

  resources :restaurants do
    resources :reservations, only: [:new, :show, :create, :destroy]
  end


  # get 'reservations/show'
  # get 'reservations/new'
  # get 'reservations/create'
  # get 'reservations/destroy'
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
