class HomeController < ApplicationController
 
  def index

    # Adds up stock in variations of each Product
    Product.all.each do |p|
      p.stock = Variation.where(product_id: p.id).map{|v| v.stock}.sum
      p.save
    end

    # Only gets products with stock
    @products = Product.where('stock > ?',0)
  end

end
