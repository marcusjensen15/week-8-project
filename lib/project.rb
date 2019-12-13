class Anagrams

  def initialize(input1, input2)
    @input1 = input1.upcase
    @input2 = input2.upcase
    @input1_length = input1.length
    @input2_length = input2.length

    @input1_array = @input1.split(" ")
    @input2_array = @input2.split(" ")

    @input1_concat = @input1.delete(" ")
    @input2_concat = @input2.delete(" ")

  end

  def input1_check
    @input1
  end

  def input1_array
    @input1_array
  end

  def input2_array
    @input2_array
  end

  def input1_concat
    @input1_concat
  end

  def input2_concat
    @input2_concat
  end



  def input2_check
    @input2
  end





  def vowel_check

    if (@input1.include? "A") || (@input1.include? "E") || (@input1.include? "I" )|| (@input1.include? "O") || (@input1.include? "U") || (@input1.include? "Y")

      if (@input2.include? "A") || (@input2.include? "E") || (@input2.include? "I" )|| (@input2.include? "O") || (@input2.include? "U") || (@input2.include? "Y")

        "Both inputs are words"

      else
        "One of the inputs do not contain a vowel"

      end


    else "One of the inputs do not contain a vowel"

    end

  end



  def array_vowel_check

    word_vowel_counter1 = 0
    word_vowel_counter2 = 0

    @input1_array.each do |word1|

      if (word1.include? "A") || (word1.include? "E") || (word1.include? "I" )|| (word1.include? "O") || (word1.include? "U") || (word1.include? "Y")

        word_vowel_counter1 += 1
      end

    end

    @input2_array.each do |word2|

      if (word2.include? "A") || (word2.include? "E") || (word2.include? "I" )|| (word2.include? "O") || (word2.include? "U") || (word2.include? "Y")

        word_vowel_counter2 += 1
      end

    end

    if word_vowel_counter1 == input1_array.length && word_vowel_counter2 == input2_array.length

    true

  else false
  end


  end





#below is the working anagram_check function with a single word


  def anagram_check

    match_counter = 0

    @input1.each_char do |in1|
      hit_counter = 0
      @input2.each_char do |in2|

        if in1 == in2

          next if hit_counter >= 1
          hit_counter += 1
          match_counter += 1



        end #end of if statement

      end  #end of second loop

    end  #end of first loop

    # match_counter

    if @input1 == @input2

      "These are the same word"

    elsif match_counter == @input1_length && match_counter == @input2_length

      "The words are Anagrams!"

    elsif match_counter == 0
      "The words are Antigrams"

    else "The words are neither Anagram nor Antigram"

    end

  end #end of anagram_check function


#above is the correct anagram check function with a single word




  def concat_anagram_check

    match_counter = 0

    @input1_concat.each_char do |in1|
      hit_counter = 0
      @input2_concat.each_char do |in2|

        if in1 == in2

          next if hit_counter >= 1
          hit_counter += 1
          match_counter += 1



        end #end of if statement

      end  #end of second loop

    end  #end of first loop

    # match_counter

    if @input1 == @input2

      "This are the same word/phrase"

    elsif match_counter == @input1_concat.length && match_counter == @input2_concat.length

      "The word/phrase are Anagrams!"

    elsif match_counter == 0
      "The word/phrase are Antigrams"

    else "The word/phrase are neither Anagram nor Antigram"

    end

  end #end of concat_anagram_check function

#below is the 'master anagram function to get the final result '

  def anagram_manager

    if array_vowel_check() == true

      concat_anagram_check()

    else "One or more words in your entry phrases does not contain a vowel"

    end
  end

  #above is the 'master anagram function to get the final result (including vowel checking)

  def length_check
    if @input1_length != @input2_length
      "These words are not Anagrams"
    else
      "Run vowel check function"
    end
  end


end
