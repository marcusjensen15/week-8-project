class Anagrams
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
    @input1_length = input1.length
    @input2_length = input2.length
  end #ends initialize
  def length_check
    if @input1_length != @input2_length
      "These words are not Anagrams"
    else
      "Run vowel check function"
    end #ends length_check if statement
  end #ends length_check
end #ends Anagrams class
