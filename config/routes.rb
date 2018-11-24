Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :products
  get 'pages/contact'
  root 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
