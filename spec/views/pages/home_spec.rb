require 'spec_helper'

describe '#home' do
  before { visit root_path }

  it 'has correct links in navigation bar' do
    within('.navbar') do
      expect(page).to have_link(ApplicationHelper.app_name)
      expect(page).to have_link('Categories')
      expect(page).to have_link('Log In')
      expect(page).to have_link('Sign Up')

      expect(page).to have_link('Technology')
      expect(page).to have_link('Politics')
      expect(page).to have_link('Culture')
      expect(page).to have_link('Business')
      expect(page).to have_link('Meta')
    end
  end

  it 'has correct links in the footer' do
    within('#footer') do
      expect(page).to have_link(ApplicationHelper.app_name)
      expect(page).to have_link('About')
      expect(page).to have_link('Help')
      expect(page).to have_link('Privacy Policy')
      expect(page).to have_link('User Agreement')
      expect(page).to have_link('Contact')
    end
  end
end
