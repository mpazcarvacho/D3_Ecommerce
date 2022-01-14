Product.destroy_all

category_shorts= Category.find_by(name: "Shorts")
category_shorts_men= Category.find_by(name: "Men Shorts")

p_01 = Product.create(
  name: "Denim shorts", 
  description: "Beautiful shorts for men", 
  stock: 0, 
  price: 21990, 
  sku: ('A'..'Z').to_a.shuffle.first(10).join
)

p_01.categories << category_shorts
p_01.categories << category_shorts_men


category_shirts= Category.find_by(name: "Shirts")
category_shirts_winter= Category.find_by(name: "Winter")

p_02 = Product.create(
  name: "Maui & Sons long sleeve Shirt", 
  description: "Winter shirt", 
  stock: 0, 
  price: 11990, 
  sku: ('A'..'Z').to_a.shuffle.first(10).join
)
p_02.categories << category_shirts
p_02.categories << category_shirts_winter

category_pants= Category.find_by(name: "Pants")
category_jeans= Category.find_by(name: "Jeans")

p_03 = Product.create(
  name: "Zara ripped jeans", 
  description: "Last trend on jeans", 
  stock: 0, 
  price: 32590, 
  sku: ('A'..'Z').to_a.shuffle.first(10).join
)
p_03.categories << category_pants
p_03.categories << category_jeans


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