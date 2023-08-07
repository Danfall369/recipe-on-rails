require 'rails_helper'

RSpec.describe User, type: :model do
  subject { RecipeFood.new(quantity: '20', recipe_id: '10', food_id: '17') }

  before { subject.save }

  it 'quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'recipe_id should be present' do
    subject.recipe_id = nil
    expect(subject).to_not be_valid
  end

  it 'food_id should be present' do
    subject.food_id = nil
    expect(subject).to_not be_valid
  end

  it 'subject quantity should be equal to 20' do
    expect(subject.quantity).to eq(20)
  end

  it 'subject recipe_id should be equal to 10' do
    expect(subject.recipe_id).to eq(10)
  end

  it 'subject food_id should be equal to 17' do
    expect(subject.food_id).to eq(17)
  end
end
