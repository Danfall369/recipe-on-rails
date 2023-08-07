require 'rails_helper'

RSpec.describe User, type: :model do
  subject { Food.new(name: 'Carne', measurement_unit: 'grams', price: '4', quantity: '9', user_id: '2') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'measurement units should be present' do
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'subject name should be equal to John Doe' do
    expect(subject.name).to eq('Carne')
  end

  it 'subject measurement unit should be equal to grams' do
    expect(subject.measurement_unit).to eq('grams')
  end

  it 'food price should be equal to 4' do
    expect(subject.price).to eq(4)
  end

  it 'food quantity should be equal to 9' do
    expect(subject.quantity).to eq(9)
  end
end
