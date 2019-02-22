Rails.application.routes.draw do
  resources :organs
  resources :sustratos
  resources :families
  resources :suculenta
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :suculents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
