require 'rails_helper'

describe "Author model", type: :model do
    author = Author.new "Alan", "Turing", "http://wikipedia.org/Alan_Turing"
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.name).to eq("Alan Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
end