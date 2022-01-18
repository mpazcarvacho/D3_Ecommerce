require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  subject { 
    OrderItem.create!(
      order_id: Order.create!(
        user_id: User.create(
          email: "testing123456@mail.com",
          password: "123456",
          password_confirmation: "123456",
        ).id,
        number: "kjsdfkj324",
        total: 10000,
        state: "progress",
      ).id,
      product_id: Product.create(
        name: "testProduct",
        description: "description",
        stock: 0,
        price: 1000,
        sku: "1243423",
      ).id,
      quantity: 1,
      price: 15,
      variation_id: 1,
    )
  }
  before { 
    subject.save
  }

  it 'quantity must be present' do

    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'order_id must be present' do

    subject.order_id = nil
    expect(subject).to_not be_valid
  end

  it 'product_id must be present' do

    subject.product_id = nil
    expect(subject).to_not be_valid
  end

  it 'variation_id must be present' do

    subject.variation_id = nil
    expect(subject).to_not be_valid
  end


end
