require 'rails_helper'

RSpec.describe Category, type: :model do
  
  # Categories are unique, hence can't belong to more than one parent as fields have only one category_id relation to themselves
  before {Category.create!(name: 'Cepa1')}
  it 'is unique' do
      category = Category.create(name: 'Cepa1')
    expect( category).to_not be_valid
  end
end
