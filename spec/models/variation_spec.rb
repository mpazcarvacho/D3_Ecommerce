require 'rails_helper'

RSpec.describe Variation, type: :model do
  subject { 
    Variation.create!(
      product_id: Product.create!(
        name: "product1",
        description: "description",
        stock: 0,
        price: 10000,
        sku: "lksdhse",
      ).id,
      color_id: Color.create!(description: 'Color1').id,
      size_id: Size.create!(description: 'Size1').id,
      stock: 10,
    )
  }
  before { 
    subject.save
  }

  it 'be created correctly' do
    
    expect(Variation.all.count).to eq(1)

  end

  it 'product_id is present' do
    subject.product_id = nil
    expect(subject).to_not be_valid
  end

end
