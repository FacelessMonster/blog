
require 'rails_helper'
require 'spec_helper'
require 'session_helper'


feature 'Article creation' do
  before(:all) do
    signed_up
  end
  scenario 'allows user to create article' do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.create')
  end
end