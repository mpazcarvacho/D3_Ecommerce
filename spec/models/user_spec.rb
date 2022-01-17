require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create!(
    email: 'test@mail.com',
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
