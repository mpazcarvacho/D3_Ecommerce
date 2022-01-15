Category.destroy_all

categories = ['Shorts', 'Pants', 'Shirts', 'Dresses']

categories.each do |category|
  Category.create(name: category)
end

cat_id_01 = Category.find_by(name: "Shorts").id

subcategories = ['Men Shorts', 'Women Shorts', "Summer"]
subcategories.each do |subcat|
  Category.create(
    name: subcat,
    category_id: cat_id_01,
  )
end

cat_id_02 = Category.find_by(name: "Shirts").id

subcategories_2 = ['Winter', "Spring"]
subcategories_2.each do |subcat|
  Category.create(
    name: subcat,
    category_id: cat_id_02,
  )
end

cat_id_03 = Category.find_by(name: "Pants").id

subcategories_3 = ['Jeans', 'Not Jeans']
subcategories_3.each do |subcat|
  Category.create(
    name: subcat,
    category_id: cat_id_03,
  )
end

cat_id_04 = Category.find_by(name: "Dresses").id

subcategories_4 = ['Fancy', 'Bridge']
subcategories_4.each do |subcat|
  Category.create(
    name: subcat,
    category_id: cat_id_04,
  )
end



# Category.all.each do |category|
#   3.times do |i|
#     Category.create(
#       name: "Subcategory#{i}",
#       category_id: category.id,
#     )
#   end
# end