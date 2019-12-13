class Anagrams
  def initialize(input1, input2)
    @input1 = input1.upcase
    @input2 = input2.upcase
    @input1_length = input1.length
    @input2_length = input2.length
  end #ends initialize

  #####################################################################


  def input1_check
    @input1
  end #ends input 1 method

  #####################################################################



  def input2_check
    @input2
  end #ends input2 method

  #####################################################################


  def vowel_check
    # vowels = ["A","E","I","O","U","Y"] can incorporate this in a loop as a dryer solution, just getting it to work first
    if (@input1.include? "A") || (@input1.include? "E") || (@input1.include? "I" )|| (@input1.include? "O") || (@input1.include? "U") || (@input1.include? "Y")

      if (@input2.include? "A") || (@input2.include? "E") || (@input2.include? "I" )|| (@input2.include? "O") || (@input2.include? "U") || (@input2.include? "Y")

        "Both inputs are words"

      else
        "One of the inputs do not contain a vowel"

      end #ends input 2 vowel check


    else "One of the inputs do not contain a vowel"

    end #ends vowel_check if statement

  end #ends vowel_check method

  #####################################################################

  def anagram_check


    if @input1_length == @input2_length    #this will be replaced with boolean result of length_check

      match_counter = 0

      @input1.each do |in1|
        @input2.each do |in2|

          if in1 == in2
            match_counter += 1

          end # ends nested comparison if statement


        end #ends input2 loop
      end #ends input1 loop



    else
      "the words are not anagrams"
    end  # ends if statement within anagram_check testing if the two strings are the same length




  #####################################################################



  def length_check
    if @input1_length != @input2_length
      "These words are not Anagrams"
    else
      "Run vowel check function"
    end #ends length_check if statement
  end #ends length_check

  #####################################################################

end #ends Anagrams class


#####################################################################



# will need to refactor code so vowel check and length check input true or false. if true run next function
#you can also run the sort method and if those are equal it basically does the whole project for you


# THE MASTER function will be like: if True and true and true and true then "the words are anigrams"
