Setfreebyjesus::Application.routes.draw do

  mount RailsAdmin::Engine => '/radmin', :as => 'rails_admin'

  resources :posts

  devise_for :admins
  devise_for :users

  root :to => 'home#index'

  get "home/index"
  get "home/about"
  get "home/contact"
  get "home/invite"
  get "home/donations"
  get "home/ministries"
  get "home/founders"
  get "home/orphanage"

end
