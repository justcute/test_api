require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) do
    User.create(login: 'login')
  end
  subject do
    described_class.new(title: 'title',
                        description: 'description',
                        user_id: user.id)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without user' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
