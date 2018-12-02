Rails.application.routes.draw do
  get 'orderproducts/index'
  get 'orderproducts/show'
  get 'orderproducts/new'
  get 'orderproducts/edit'
  get 'orderproducts/index'
  get 'orderproducts/show'
  get 'orderproducts/edit'
  get 'productitems/index'
  get 'productitems/show'
  get 'productitems/edit'
  resources :orders do
    resources :orderproducts
  end
  
  get '/checkout', to: 'cart#createOrder'
  
  get 'cart/index'
  get '/cart', to: 'cart#index'
 
 
  devise_for :users do
    resources:orders
  end
  
  get 'vendor' => "products#vendor"
  
  resources :categories
  resources :products
  get 'pages/contact'
  root 'pages#about'
  
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id', to: 'cart#remove'
  post '/search' => 'products#search'
  
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
