Category.destroy_all

categories = ['Smartphones', 'Shoes', 'Accessories']

categories.each do |category|
  Category.create(name: category)
end
