require 'rails_helper'

RSpec.describe Category, type: :model do
  
  # Categories are unique, hence can't belong to more than one parent as fields have only one category_id relation to themselves
  before { 
    cat1 = Category.create!(name: 'Cepa1')
    ca1.save
  }

  it 'is unique' do
      category = Category.create(name: 'Cepa1')
    expect( category).to_not be_valid
  end

  it 'name can not be nil' do
    cat1.name = nil
    expect(cat1).to_not be_valid
  end

end
