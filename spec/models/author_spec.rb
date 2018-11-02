require 'rails_helper'

describe "Author model", type: :model do

  it "can be created" do
    author = Author.new(
        first_name: "Alan",
        last_name: "Turing",
        homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.name).to eq("Alan Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author).to be_valid
  end

  it 'is not valid without last name' do
    author = Author.new(first_name: 'Alan')
    expect(author).to_not be_valid

    author2 = Author.new(first_name: 'Alan', last_name: '')
    expect(author).to_not be_valid
  end
end