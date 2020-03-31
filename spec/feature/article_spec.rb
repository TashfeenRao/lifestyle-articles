require "rails_helper"

RSpec.feature "article new", :type => :feature do
  scenario "creating new article" do
    visit "/articles/new"

    fill_in "Category Name", :with => "fashion"
    fill_in "priority", :with => "1"
    click_button "ADD"

    expect(page).to have_text("New Category Added")
  end
end