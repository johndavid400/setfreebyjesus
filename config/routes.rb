Setfreebyjesus::Application.routes.draw do

  resources :posts

  devise_for :admins
  devise_for :users

  root :to => 'home#index'

  get "home/index"
  get "home/about"
  get "home/contact"

end
