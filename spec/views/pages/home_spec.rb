require 'spec_helper'

describe '#home' do
  before { visit root_path }

  it 'has correct links in navigation bar' do
    within('.navbar') do
      expect(page).to have_link(app_name, root_path)
      expect(page).to have_link('Categories')
      expect(page).to have_link('Log In')
      expect(page).to have_link('Sign Up')
    end
  end

  it 'has correct links in the footer' do
    within('#footer') do
      expect(page).to have_link(app_name, root_path)
      expect(page).to have_link('About')
      expect(page).to have_link('Help')
      expect(page).to have_link('Privacy Policy')
      expect(page).to have_link('User Agreement')
      expect(page).to have_link('Contact')
    end
  end
end
