require './lib/project'

puts "Enter your first word or phrase to check if it is an: Anagram, Antigram, or Neither!"

input1 = gets.chomp

puts "Enter your second word or phrase to check if it is an: Anagram, Antigram, or Neither!"

input2 = gets.chomp

anagram = Anagrams.new(input1,input2)


puts "Your result: "



puts anagram.anagram_manager
