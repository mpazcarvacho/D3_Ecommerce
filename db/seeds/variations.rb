Variation.destroy_all

Variation.create(
  product_id: 1,
  color_id: 1,
  size_id: 1,
  stock: 10,
)

product_id_01= Product.find_by(name: "Denim shorts").id
product_id_02= Product.find_by(name: "Maui & Sons long sleeve Shirt").id
product_id_03= Product.find_by(name: "Zara ripped jeans").id

color_id_red = Color.find_by(description: "Red").id
color_id_black = Color.find_by(description: "Black").id
color_id_white = Color.find_by(description: "White").id
color_id_green = Color.find_by(description: "Green").id
color_id_yellow = Color.find_by(description: "Yellow").id

size_id_s = Size.find_by(description: "S").id
size_id_m = Size.find_by(description: "M").id
size_id_l = Size.find_by(description: "L").id
size_id_xl = Size.find_by(description: "XL").id
size_id_xxl = Size.find_by(description: "XXL").id


Variation.create(
  product_id: product_id_01,
  color_id: color_id_black,
  size_id: size_id_m,
  stock: 10,
)
Variation.create(
  product_id: product_id_01,
  color_id: color_id_red,
  size_id: size_id_m,
  stock: 1,
)
Variation.create(
  product_id: product_id_01,
  color_id: color_id_green,
  size_id: size_id_s,
  stock: 100,
)
Variation.create(
  product_id: product_id_02,
  color_id: color_id_yellow,
  size_id: size_id_m,
  stock: 0,
)
Variation.create(
  product_id: product_id_02,
  color_id: color_id_yellow,
  size_id: size_id_xxl,
  stock: 2,
)
Variation.create(
  product_id: product_id_02,
  color_id: color_id_yellow,
  size_id: size_id_s,
  stock: 3,
)
Variation.create(
  product_id: product_id_03,
  color_id: color_id_red,
  size_id: size_id_l,
  stock: 0,
)
