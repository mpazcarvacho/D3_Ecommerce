class CartsController < ApplicationController
  before_action :authenticate_user!
  
  def update
    product_id = params[:cart][:product_id]
    quantity = params[:cart][:quantity]

    current_order.add_product(product_id, quantity)
    
    redirect_to root_path, notice: 'Product added succesfully'
  end

  def show
    @order = current_order
  end
end
