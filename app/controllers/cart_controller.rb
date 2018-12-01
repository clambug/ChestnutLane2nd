class CartController < ApplicationController
  before_action :authenticate_user!
  
  def add
    # get product id
    id = params[:id]
    
    #use pre-existing session if active
    if session[:cart] then
      cart = session[:cart]
    
   else
     session[:cart] = {}
     cart = session[:cart]
    end
  
  
  
  # check for duplicate cart entries, if so make additions of 1
  
  if cart[id] then
    cart[id] = cart[id] + 1
  else 
    cart[id] = 1
  end
  
  
  redirect_to :action => :index
  
  end
  
  def clearCart
    #clear cart
    session[:cart] =nil
    redirect_to :action => :index
    
  end
  
  
  
  def index
    # see exisitng cart view
    if session[:cart] then
    @cart = session[:cart]
  else
    @cart = {}
    end
  
  
  end
  
  def remove
    
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    
    redirect_to :action => :index
    
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  
  
  
  
  
  
end
