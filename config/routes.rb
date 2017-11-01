Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  root to: "home#index"

  resources :cards, only: [:index, :show]
end
