class HomeController < ApplicationController
  def index
    # variable de instancia a todos los productos
    @product = Product.all
  end
end
