Rails.application.routes.draw do
  resources :posts
  root to: 'home#index'
  resources :home, only: [] do
  	get 'show'
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
