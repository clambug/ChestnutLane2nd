class PagesController < ApplicationController
  def about
    @products = Product.all
    @categories = Category.all.order("created_at DESC")
  end

  def contact
  end
  
  def paid
  flash[:notice] = 'Order Complete'
  
  @order = Order.last
  
  @order.update_attribute(:status, "Paid by User: #{current_user.name} ")
  end
  
end
