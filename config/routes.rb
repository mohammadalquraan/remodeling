Rails.application.routes.draw do
  resources :buyer_locations
  resources :service_buyers
  resources :locations
  resources :buyers
  resources :leads,except: [:new, :create]
  resources :services
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
