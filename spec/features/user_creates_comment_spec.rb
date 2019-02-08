require 'rails_helper'
require 'capybara/rspec'
require 'session_helper'

feature "user creates comment" do
  before(:all) do
    signed_up
    created_article
  end

  scenario "signed up user creates comment " do
    fill_in "comment_body",	with: "commenttext" 
    click_button "Submit"
    expect(page).to have_content "commenttext"
  end
end