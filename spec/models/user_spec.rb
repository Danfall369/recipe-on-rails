require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'John Doe', email: 'test@mail.com') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'subject name should be equal to John Doe' do
    expect(subject.name).to eq('John Doe')
  end
end
