Rails.application.routes.draw do
  get 'cart/index'
  get '/cart', to: 'cart#index'
  devise_for :users
  resources :categories
  resources :products
  get 'pages/contact'
  root 'pages#about'
  
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id', to: 'cart#remove'
  
  post '/search' => 'products#search'
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
