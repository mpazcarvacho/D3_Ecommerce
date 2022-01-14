Category.destroy_all

categories = ['Smartphones', 'Shoes', 'Accessories']

categories.each do |category|
  Category.create(name: category)
end

Category.all.each do |category|
  3.times do |i|
    Category.create(
      name: "Subcategory#{i}"
      category_id: category.id
    )
  end