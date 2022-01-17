require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject { Admin.create!(
    email: 'admin@mail.com',
    password: '123456',
    password_confirmation: '123456',
  )
  }
  before { 
    subject.save
  }

  it 'email is present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
