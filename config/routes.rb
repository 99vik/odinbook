Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}

  root "posts#index"

  resources :posts, only: [:index, :create] do
    resources :likes, :only => [:create, :destroy]
    resources :comments, :only => [:create]
  end

  resources :users, only: [:show]

  resources :friendships, only: [:create, :destroy]

  get '/friend_requests', to: 'friendships#friend_requests'
  post '/friend_requests/:id/accept', to: 'friendships#accept_friend_request', as: 'accept_friend_request'
  post '/friend_requests/:id/decline', to: 'friendships#decline_friend_request', as: 'decline_friend_request'
end
