Rails.application.routes.draw do


  resources :users, only: [:index, :edit, :update]
  get 'users/account' => 'users#account', as: 'account'
  get 'users/profile' => 'users#profile', as: 'profile'
  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  
  root to: 'toppages#index'
  
  get 'rooms/posts' => 'rooms#posts', as: 'posts'
  resources :rooms, only: [:new, :index, :show, :create, :destroy, :update, :edit]

  resources :reservations, only: [:new, :index, :show, :create, :destroy]
  post 'reservations/confirm' => 'reservations#confirm', as: 'confirm'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
