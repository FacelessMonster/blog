
require 'rails_helper'
require 'capybara/rspec'

feature "contact creation" do
  scenario "allows acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "create message contact us" do
    visit '/contacts'
    fill_in "contact_email",	with: "blabla@bla.com"
    fill_in "contact_message",	with: "sometext"
    click_button "Send Message "

    expect(page).to have_content "Ok ok"
  end
end