Product.destroy_all

Category.all.each do |category|
  4.times do |i|
    product_attributes = {
      name: "Producto_#{i}",
      # TODO stock should be the sum of variations stock; set initially at zero
      stock: 0,
      price: rand(1..100)*990,
      sku: ('A'..'Z').to_a.shuffle.first(10).join}
      Product.create(product_attributes).categories << category
    
  end
end