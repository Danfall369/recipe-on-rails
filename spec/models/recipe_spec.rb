require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    Recipe.new(name: 'Carne a la piedra', preparation_time: '2', cooking_time: '1',
               description: 'this a meat on a stone', public: 'true', user_id: '1')
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'preparation time should be present' do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end

  it 'cooking time should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'public should be present' do
    subject.public = nil
    expect(subject).to_not be_valid
  end

  it 'subject name should be equal to Carne a la piedra' do
    expect(subject.name).to eq('Carne a la piedra')
  end

  it 'subject preparation time should be equal to 2' do
    expect(subject.preparation_time).to eq(2)
  end

  it 'subject cooking time should be equal to 1' do
    expect(subject.cooking_time).to eq(1)
  end

  it 'subject description should be equal to this a meat on a stone' do
    expect(subject.description).to eq('this a meat on a stone')
  end

  it 'subject public should be equal to true' do
    expect(subject.public).to eq(true)
  end

  it 'subject user id should be equal to 1' do
    expect(subject.user_id).to eq(1)
  end
end
