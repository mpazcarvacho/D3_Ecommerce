Size.destroy_all

sizes = ['S', 'M', 'L', 'XL', 'XXL']

sizes.each do |size|
  Size.create(name: size)
end