#require 'spec_helper'
#require './app/models/link'
#Capybara.app = BookmarkManager

#feature 'search for tags' do
#  scenario 'search for a specific tag' do
#    visit '/links/new'
#    fill_in :title, with: 'New link'
#    fill_in :url, with: 'www.bbc.co.uk'
#    fill_in :tags, with: 'current affairs'
#    click_button 'Save'
#    searc
