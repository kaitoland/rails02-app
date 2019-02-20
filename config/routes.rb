Rails.application.routes.draw do
  resources :creators
  root to:'home#index'
end
