require 'session_helper'
require 'rails_helper'

feature "user edit article" do
  before(:all) do
  signed_up
  created_article
  end
  scenario "edit article after create" do
    visit edit_article_path(1)
    expect(page).to have_content "sometext"
  end
end