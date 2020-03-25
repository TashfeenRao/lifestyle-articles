require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    Category.new(name: 'fashion',
             priority: '1')
  end

  it 'user should be valid' do
    expect(subject).to be_valid
  end

  it 'user name should present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'user priority should present' do
    subject.priority = nil
    expect(subject).to_not be_valid
  end
end
