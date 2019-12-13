class Anagrams


  def initialize(input1, input2)
    @input1 = input1.upcase
    @input2 = input2.upcase
    @input1_length = input1.length
    @input2_length = input2.length
  end




  def input1_check
    @input1
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

    match_counter

    

  end #end of anagram_check function









  def length_check
    if @input1_length != @input2_length
      "These words are not Anagrams"
    else
      "Run vowel check function"
    end
  end


end
