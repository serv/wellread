require 'spec_helper'

describe '#more_info' do
  let(:title) { 'Here is a really fake title.' }

  before do
    visit new_link_path
    author_name = 'Jason Kim'
    fill_in('Title', with: title)
    fill_in('URL', with: 'https://gist.github.com/zhengjia/428105')
    fill_in('Author', with: 'Jason Kim')
    fill_in('Category', with: 'Philosophy')
    click_button('Submit')
  end

  it 'should have a form for publication date' do
    expect(page).to have_content('Publication date')
    fill_in('Publication date', with: '07/23/2014')
    click_button('Submit')

    link = Link.find_by(title: title)

    expect(link.publication_date).to eq(pub_date_to_datetime('07/23/2014'))
    expect(link.str_publication_date).to eq('07/23/2014')
  end
end
