require 'rails_helper'

RSpec.describe Color, type: :model do
  subject { Color.create!(description: 'Color1')}
  before { 
    subject.save
  }

  it 'description can not be nil' do

    subject.description = nil
    expect(subject).to_not be_valid
  end
end
