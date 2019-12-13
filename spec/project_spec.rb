require('rspec')
require('project')

# describe ('#project length test') do
#   it("should check to see if the lengths of both inputs are equal")do
#     anagrams = Anagrams.new("hello","hello")
#
#     expect(anagrams.length_check).to(eq("Run vowel check function"))
#
#   end
# end
#
# describe ('#project input1 captitalize') do
#   it("should capitalize every letter for input one")do
#     anagrams = Anagrams.new("hello","hello")
#
#     expect(anagrams.input1_check).to(eq("HELLO"))
#
#   end
# end
#
# describe ('#project input2 captitalize') do
#   it("should capitalize every letter for input two")do
#     anagrams = Anagrams.new("hello","hello")
#
#     expect(anagrams.input2_check).to(eq("HELLO"))
#
#   end
# end
#
# describe ('#project input1 vowel check') do
#   it("should check to see if input 1 contains vowels")do
#     anagrams = Anagrams.new("crack","dad")
#
#     expect(anagrams.vowel_check).to(eq("One of the inputs do not contain a vowel"))
#
#   end
# end

#all above tests work


describe ('#project anagram_check match counter') do
  it("should count the number of matches between two strings")do
    anagrams = Anagrams.new("crack","kcarc")

    expect(anagrams.anagram_check).to(eq("The words are Anagrams!"))

  end
end

describe ('#input 1 array') do
  it("should convert input 1 to a captialized array of words")do
    anagrams = Anagrams.new("crack heads aint cool","rcack")

    expect(anagrams.input1_array).to(eq(["CRACK", "HEADS", "AINT", "COOL"]))

  end
end

describe ('#input 2 array') do
  it("should convert input 2 to a captialized array of words")do
    anagrams = Anagrams.new("crack heads aint cool","we love to dance")

    expect(anagrams.input2_array).to(eq(["WE", "LOVE", "TO", "DANCE"]))

  end
end

describe ('#input 1 concat') do
  it("should eliminate all space between inputted capitalized strings")do
    anagrams = Anagrams.new("crack heads aint cool","we love to dance")

    expect(anagrams.input1_concat).to(eq("CRACKHEADSAINTCOOL"))

  end
end

describe ('#input 2 concat') do
  it("should eliminate all space between inputted capitalized strings")do
    anagrams = Anagrams.new("crack heads aint cool","we love to dance")

    expect(anagrams.input2_concat).to(eq("WELOVETODANCE"))

  end
end

describe ('#array_vowel_check') do
  it("should count the word in an array if it contains a vowel")do
    anagrams = Anagrams.new("crack dad aint cool","face man to lie piggy sue")

    expect(anagrams.array_vowel_check).to(eq(true))

  end
end

describe ('#concat_anagram_check') do
  it("it should check to see if two phrases are anagrams, antigrams, or nothing. only testing with real words initially")do

    anagrams = Anagrams.new("hello friend","hello")

    expect(anagrams.concat_anagram_check).to(eq("The words are neither Anagram nor Antigram"))

  end
end


describe ('#anagram_manager') do
  it("should call array_vowel_check method. if that is true proceed to call concat_anagram_check")do

    anagrams = Anagrams.new("hello friend","heollfridne")

    expect(anagrams.anagram_manager).to(eq("The words are Anagrams!"))

  end
end
