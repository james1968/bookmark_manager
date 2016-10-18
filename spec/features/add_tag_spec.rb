require 'spec_helper'
require './app/models/link'
Capybara.app = BookmarkManager

feature 'adding a tag' do
  scenario 'add a tag to a link' do
    visit '/links/new'
    fill_in :title, with: 'New link'
    fill_in :url, with: 'www.bbc.co.uk'
    fill_in :tags, with: 'current affairs'
    click_button 'Save'
    link = Link.first
    expect(link.tags.map(&:name)).to include ('current affairs')
  end
end
