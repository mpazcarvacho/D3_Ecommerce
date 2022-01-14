Color.destroy_all

colors = ['Red', 'Black', 'White', 'Green', 'Yellow']

colors.each do |color|
  Color.create(name: color)
end