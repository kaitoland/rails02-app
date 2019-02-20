Rails.application.routes.draw do
  resources :requests
  resources :materials
  resources :creators
  root to:'home#index'
end
