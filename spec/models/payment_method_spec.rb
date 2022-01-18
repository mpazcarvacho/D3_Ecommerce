require 'rails_helper'

RSpec.describe PaymentMethod, type: :model do
  subject { 
    PaymentMethod.create!(
      name:'Paypal Express Checkout', 
      code: 'PEC'
    )
  }
  before { 
    subject.save
  }

  it 'be created correctly' do
    
    expect(PaymentMethod.all.count).to eq(1)

  end


end
