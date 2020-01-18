# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence as a String
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ") #split by space to get each word instead of splitting by characters!

    new_words = words.select do |word|
        num_vowels = num_vowels(word)
        num_vowels >= 2
        # p num_vowels(word)
    end

    new_words.join(" ")
end

def num_vowels(word) #returns the number of times aeiou show up in one word.
    count = 0
    word.each_char do |char|
        count += 1 if char.match(/[aeiou]/i)
    end
    count
end

p many_vowel_words("Hello world, how are you")
p many_vowel_words("The quick brown fox jumps over the lazy dog")
p num_vowels("Hello world, how are you")