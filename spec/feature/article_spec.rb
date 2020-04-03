require 'rails_helper'

RSpec.feature 'article new', type: :feature do
  before do
    @user = User.create(name: 'tash2')
  end
  scenario 'creating new article' do
    visit '/login'
    fill_in 'enter username', with: 'tash2'
    click_button 'Log In'
    visit '/categories/new'
    fill_in 'Category Name', with: 'Fashion'
    fill_in 'priority', with: '1'
    click_button 'ADD'
    expect(page).to have_text('New Category Added')
    visit '/articles/new'
    fill_in 'Title', with: 'testing'
    fill_in 'text', with: 'helo tesint article'
    page.check('Fashion')
    # please copy path of image and paste here
    page.attach_file('spec/feature/apple-touch-icon-precomposed.png') do
      page.find('#Choose').click
    end
    click_button 'Post'

    expect(page).to have_text('New Article published')
  end
end
