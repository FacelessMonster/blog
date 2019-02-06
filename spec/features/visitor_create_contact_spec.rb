
require 'rails_helper'
require 'capybara/rspec'

feature "contact creation" do
  scenario "allows to contact page" do
    visit '/contacts'

    expect(page).to have_content "Contact with us" 
  end
end