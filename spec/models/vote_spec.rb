require 'rails_helper'

RSpec.describe Vote, type: :model do
  subject do
    @u = User.create(name: 'tashfeen')
    @c = Category.create(name:"fashion",priority:"1")
    @a = Article.create(author_id: @u.id,title:'testing',text:'hello',category_id:@c.id)
    Vote.new(user_id: @u.id,
             article_id: @a.id)
  end

  it 'user name should present' do
    subject.article_id = nil
    expect(subject).to_not be_valid
  end

  it 'user email should present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
