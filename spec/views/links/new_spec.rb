require 'spec_helper'

describe '#new' do
  before { visit new_link_path }

  it 'should create a new link' do
    title = 'Here is a really fake title.'
    author_name = 'Jason Kim'
    fill_in('Title', with: title)
    fill_in('URL', with: 'https://gist.github.com/zhengjia/428105')
    fill_in('Author Name', with: 'Jason Kim')
    click_button('Submit')

    expect(page).to have_content('More Information about the Link')

    link = Link.find_by(title: title)

    expect(link.title).to eq(title)
    expect(link.authorables.first.link_id).to eq(link.id)
    expect(link.authorables.count).to eq(1)
    expect(link.authors.first.name).to eq(author_name)
    expect(link.authors.count).to eq(1)
  end
end
