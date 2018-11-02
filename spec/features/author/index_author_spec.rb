require 'rails_helper'

describe 'Author index page' do

  before() do
    @author = FactoryBot.create(:author)
    visit authors_path
  end

  it 'should contain names and homepages of authors' do
    expect(page).to have_text @author.name
    expect(page).to have_text @author.homepage
  end

  it 'should link to detail page' do
    expect(page).to have_link nil, href: author_path(@author)
  end

  it 'should link to new page' do
    expect(page).to have_link nil, href: new_author_path
  end
end