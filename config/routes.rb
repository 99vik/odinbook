Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}

  root "posts#index"

  resources :posts, only: [:index, :create] do
    resources :comments, :only => [:create]
  end
end
