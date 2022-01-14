Category.destroy_all

categories = ['Shorts', 'Pants', 'Shirts', 'Dresses']

categories.each do |category|
  Category.create(name: category)
end

Category.where(name: "Shorts").create(
  name: "Men Shorts",
  category_id: category.id
)

Category.where(name: "Shorts").create(
  name: "Women Shorts",
  category_id: category.id
)

Category.where(name: "Shorts").create(
  name: "Summer",
  category_id: category.id
)

Category.where(name: "Shirts").create(
  name: "Winter",
  category_id: category.id
)

Category.where(name: "Pants").create(
  name: "Jeans",
  category_id: category.id
)

Category.where(name: "Pants").create(
  name: "Long",
  category_id: category.id
)

Category.where(name: "Shirts").create(
  name: "Summer",
  category_id: category.id
)

Category.where(name: "Dresses").create(
  name: "Long",
  category_id: category.id
)

Category.all.each do |category|
  3.times do |i|
    Category.create(
      name: "Subcategory#{i}"
      category_id: category.id
    )
  end
end