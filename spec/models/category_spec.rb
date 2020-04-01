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
  it { should have_many(:articles) }

  it 'has many articles' do
    expect(subject).to have_many(:articles)
  end

  it { should have_many(:article_categories) }

  it 'has many articles_categories' do
    expect(subject).to have_many(:article_categories)
  end

  it { should have_many(:articles) }

  it 'has many articles' do
    expect(subject).to have_many(:articles)
  end
end
