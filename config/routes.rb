Setfreebyjesus::Application.routes.draw do

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, :at => '/'

  mount RailsAdmin::Engine => '/radmin', :as => 'rails_admin'
  resources :posts
  resources :elements

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
  get "home/page_content"

end
