Rails.application.routes.draw do
  root :to => 'home#index'
  mount RailsAdmin::Engine => '/manage', :as => 'rails_admin'
  devise_for :admins
  resources :posts

  get "home/index"
  get "home/about_us"
  get "home/contact"
  post "contact" => "home#message"
  get "home/invite"
  get "home/ministries"
  get "home/founders"
  get "home/orphanage"
  get "home/page_content"
  get "home/support"
  get "home/products"
  get "home/donations"
  get "home/testimonies"

  namespace :admin do
    resources :elements
  end

end
