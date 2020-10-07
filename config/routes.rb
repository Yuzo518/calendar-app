Rails.application.routes.draw do
  root to: 'plans#index'
  resources :plans
  devise_for :users
end
