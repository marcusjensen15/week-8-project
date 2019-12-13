class Anagrams
  def initialize(input1, input2)
    @input1 = input1.upcase
    @input2 = input2.upcase
    @input1_length = input1.length
    @input2_length = input2.length
  end #ends initialize
  def input1_check
    @input1
  end #ends input 1 method
  def input2_check
    @input2
  end #ends input2 method
  def length_check
    if @input1_length != @input2_length
      "These words are not Anagrams"
    else
      "Run vowel check function"
    end #ends length_check if statement
  end #ends length_check
end #ends Anagrams class






#you can also run the sort method and if those are equal it basically does the whole project for you
