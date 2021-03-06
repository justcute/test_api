require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(login: 'login')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
