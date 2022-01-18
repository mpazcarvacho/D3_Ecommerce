require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { 
    Order.create!(
      user_id: User.create(
        email: "testing123456@mail.com",
        password: "123456",
        password_confirmation: "123456",
      ).id,
      number: "kjsdfkj324",
      total: 10000,
      state: "progress",
    )
  }
  before { 
    subject.save
  }

  it 'number must be present' do

    subject.number = nil
    expect(subject).to_not be_valid
  end

  it 'total must be present' do

    subject.total = nil
    expect(subject).to_not be_valid
  end

  it 'number is unique' do
    order = Order.create(
      user_id: 1,
      number: "kjsdfkj324",
      total: 10000,
      state: "progress",
    )
    expect(order).to be_valid
  end

end
