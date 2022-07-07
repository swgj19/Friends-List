Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  get '/user' => "friends#index", :as => :user_root
  root 'home#index'
end
