# Using loops, write a Ruby program that:

#     Ask for an input number. Check if the input is a valid number.
#     If it is a positive number, then countdown from input number to 0, with decrements of -1. If it is a negative number, countup from the negative number to 0, in increments of +1.
#     Use sleep(0.3) in your loop so that it would run slower and you can see the effect when you run the program


puts "Insert a number."
numAnswer = gets.chomp.to_i

while numAnswer > 0
    numAnswer = numAnswer - 1
    sleep(0.3)
puts numAnswer
end

while numAnswer < 0
    numAnswer = numAnswer + 1
    sleep(0.3)
puts numAnswer
end