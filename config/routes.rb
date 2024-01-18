Rails.application.routes.draw do
  devise_for :users
  resources :categories
  get "up" => "rails/health#show", as: :rails_health_check
  root 'articles#index'

  resources :articles
end
