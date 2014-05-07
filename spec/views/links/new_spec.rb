require 'spec_helper'

describe '#new' do
  before { visit new_link_path }

  it 'should create a new link' do
    title = 'Here is a really fake title.'
    fill_in('Title', with: title)
    fill_in('URL', with: 'https://gist.github.com/zhengjia/428105')
    click_button('Submit')

    expect(page).to have_content('More Information about the Link')
    expect(Link.find_by(title: title).title).to eq(title)
  end
end
