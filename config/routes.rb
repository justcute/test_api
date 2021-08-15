Rails.application.routes.draw do
  namespace :api do
    resources :posts, only: [:create, :index]
    resources :marks, only: :create
    resources :ips, only: :index
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
