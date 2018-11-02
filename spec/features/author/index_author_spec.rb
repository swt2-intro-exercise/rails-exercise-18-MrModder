require 'rails_helper'

describe 'Author index page' do

  it 'should render' do
    visit authors_path
  end

  it 'should contain a table' do
    author = FactoryBot.create(:author)
    visit authors_path
    expect(page).to have_text author.name
    expect(page).to have_text author.homepage
  end
end