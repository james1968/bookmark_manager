require 'spec_helper'
require './app/models/link'
Capybara.app = BookmarkManager

feature 'create links' do
  scenario 'save a new link' do
    visit '/links/new'
    fill_in :title, with: 'New link'
    fill_in :url, with: 'www.bbc.co.uk'
    click_button 'Save'
    visit '/links'

    within 'ul#links' do
      expect(page).to have_content 'New link'
    end
  end
end
