require('rspec')
require('project')

describe ('#project') do
  it("should check to see if the lengths of both inputs are equal")do
    anagrams = Anagrams.new("hello","helloooo")

    expect(anagrams.length_check).to(eq("These words are not Anagrams"))

  end
end
