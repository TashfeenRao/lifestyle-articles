require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'tashfeen')
  end

  it 'user should be valid' do
    expect(subject).to be_valid
  end

  it 'user name should present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
