require 'rails_helper'

RSpec.describe Category, type: :model do
  
  # Categories are unique, hence can't belong to more than one parent as fields have only one category_id relation to themselves
  
  subject { Category.create!(name: 'Cepa1')}
  before { 
    subject.save
  }

  it 'name is unique' do
    category = Category.create(name: 'Cepa1')
    expect( category).to_not be_valid
  end

  it 'name is present' do

    subject.name = nil
    expect(subject).to_not be_valid
  end

end
