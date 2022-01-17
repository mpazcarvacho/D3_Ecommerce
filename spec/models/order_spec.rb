require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { 
    Order.create!(
      user_id: 1,
      number: "kjsdfkj324",
      total: 10000,
      state: "progress",
      user_id:1,
    )
  }
  before { 
    subject.save
  }

  it 'code must be present' do

    subject.code = nil
    expect(subject).to_not be_valid
  end

  it 'discount value must be present' do

    subject.discount_value = nil
    expect(subject).to_not be_valid
  end

  it 'code is unique' do
    coupon = Coupon.create(
      unique: true,
      code: "code1",
      fix_discount: true,
      discount_value: 1000,
      user_id:1,
    )
    expect(coupon).to_not be_valid
  end

  it 'user_id is optional' do
    coupon2 = Coupon.create(
      unique: true,
      code: "code1",
      fix_discount: true,
      discount_value: 1000,
    )
    expect(coupon2).to_not be_valid
  end
end
