require 'rails_helper'

describe 'Author edit page' do

  it 'should render' do
    author = FactoryBot.create(:author)
    visit edit_author_path(author)
  end

  it 'should change author on submit' do
    author = FactoryBot.create(:author)
    visit edit_author_path(author)

    first_name = author.first_name + 'some string'
    expect(author.first_name).to_not eq first_name

    page.fill_in 'author[first_name]', with: first_name
    find('input[type = "submit"]').click
    author.reload

    expect(author.first_name).to eq first_name

  end
end