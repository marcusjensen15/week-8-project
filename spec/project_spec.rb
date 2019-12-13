require('rspec')
require('project')

describe ('#project length test') do
  it("should check to see if the lengths of both inputs are equal")do
    anagrams = Anagrams.new("hello","hello")

    expect(anagrams.length_check).to(eq("Run vowel check function"))

  end
end

describe ('#project input1 captitalize') do
  it("should capitalize every letter for input one")do
    anagrams = Anagrams.new("hello","hello")

    expect(anagrams.input1_check).to(eq("HELLO"))

  end
end

describe ('#project input2 captitalize') do
  it("should capitalize every letter for input two")do
    anagrams = Anagrams.new("hello","hello")

    expect(anagrams.input2_check).to(eq("HELLO"))

  end
end
