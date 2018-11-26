class PagesController < ApplicationController
  def about
    @products = Product.all
    
  end

  def contact
  end
end
