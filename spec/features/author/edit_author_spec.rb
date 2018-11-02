require 'rails_helper'

describe 'Author edit page' do

  it 'should render' do
    author = FactoryBot.create(:author)
    visit edit_author_path(author)
  end
end