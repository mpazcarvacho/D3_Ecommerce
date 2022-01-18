require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject { 
    Payment.create!(
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
      payment_method_id: PaymentMethod.create!(
        name:'Paypal Express Checkout', 
        code: 'PEC'
      ).id,
      state: "processed",
      total: 12000,
      token: 345345,
    )
  }
  before { 
    subject.save
  }

  it 'be created correctly' do
    
    expect(Payment.all.count).to eq(1)

  end
end
