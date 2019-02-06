
require 'rails_helper'
require 'capybara/rspec'

feature "contact creation" do
  scenario "allows acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end