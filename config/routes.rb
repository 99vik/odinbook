Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}

  root "posts#index"

  resources :posts, only: [:index, :create, :destroy, :show] do
    resources :likes, :only => [:create, :destroy]
    resources :comments, :only => [:create]
  end

  resources :users, only: [:show]
  get '/friend_list/:id/', to: "users#friend_list", as: "friend_list"
  get '/likes_list/:id/', to: "posts#likes_list", as: "likes_list"

  resources :friendships, only: [:create, :destroy]

  get 'notifications', to: "notifications#index"
  post 'clear_notifications', to: "notifications#clear_notifications", as: "clear_notifications"
  delete 'notifications/:id', to: "notifications#destroy", as: "delete_notification"

  get '/friend_requests', to: 'friendships#friend_requests'
  post '/friend_requests/:id/accept', to: 'friendships#accept_friend_request', as: 'accept_friend_request'
  post '/friend_requests/:id/decline', to: 'friendships#decline_friend_request', as: 'decline_friend_request'

end
