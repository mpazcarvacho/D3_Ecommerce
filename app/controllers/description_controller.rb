class DescriptionController < ApplicationController

  def show
    puts 'DESCRIPTION VIEW'
    @product = Product.find(params[:product_id])
    puts @product
  end
end
