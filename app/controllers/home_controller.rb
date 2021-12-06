class HomeController < ApplicationController
  def index
    # variable de instancia a todos los productos
    @products = Product.all
  end
end
