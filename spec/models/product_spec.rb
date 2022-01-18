require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { 
    Product.create!(
      name: "product1",
      description: "description",
      stock: 0,
      price: 10000,
      sku: "lksdhse",
    )
  }
  before { 
    subject.save
  }

  it 'be created correctly' do
    
    expect(Product.all.count).to eq(1)

  end

  it 'name is present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'price is present' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

end
