require 'rails_helper'

RSpec.describe Size, type: :model do
  subject { Size.create!(description: 'Size1')}
  before { 
    subject.save
  }

  it 'description can not be nil' do

    subject.description = nil
    expect(subject).to_not be_valid
  end
end
