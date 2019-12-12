# An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once. Write a program that takes in two text inputs, and checks if it is an anagram of one another

def sorted(n)
    return n.split('').sort.join('')
end


loop do
puts "What is your first word?"
firstWord = gets.chomp

puts "What is your second word?"
secondWord = gets.chomp

if sorted(firstWord) == sorted(secondWord)
    puts "#{firstWord} and #{secondWord} are anagrams!"
    break
else 
    puts "Please try again!"
end
end





