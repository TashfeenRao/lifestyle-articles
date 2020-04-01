require 'rails_helper'

RSpec.feature 'category new', type: :feature do
  scenario 'creating new category' do
    visit '/categories/new'

    fill_in 'Category Name', with: 'fashion'
    fill_in 'priority', with: '1'
    click_button 'ADD'

    expect(page).to have_text('New Category Added')
  end
end
