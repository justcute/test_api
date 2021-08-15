require 'rails_helper'

RSpec.describe Mark, type: :model do
  let(:user) do
    User.create(login: 'login')
  end
  let(:post) do
    Post.create(title: 'title',
                  description: 'description',
                  user_id: user.id)
  end
  subject do
    described_class.new(value: 5,
                        post_id: post.id)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid value' do
    subject.value = 10
    expect(subject).to_not be_valid
  end

  it 'is not valid with float value' do
    subject.value = 10.5
    expect(subject).to_not be_valid
  end

  it 'is not valid without post' do
    subject.post_id = nil
    expect(subject).to_not be_valid
  end
end
