# Using loops, write a Ruby program that:

#     Gets an input number from the user.
#     Generates a triangle.

puts "Input a number for the height of triangle"
inputNum = gets.chomp.to_i

puts "Choose a symbol."
symbolAnswer = gets.chomp


def printATriangle(inputNum,symbolAnswer="=")
    i = 0
    symbolCount = ''
    while i<inputNum
    symbolCount = symbolCount+symbolAnswer
    i+=1
    puts symbolCount
    end
end

printATriangle(inputNum,symbolAnswer)