# Using loops, write a Ruby program that:

#     Gets an input number from the user
#     Allow the user to choose the symbol to be used (And if the user did not input one, the default will be =)
#     Generates a square consisting of the symbol that is exactly input_number long and input_number tall:

puts "Insert a number."
numAnswer = gets.chomp.to_i

puts "Choose a symbol."
symbolAnswer = gets.chomp

def print_a_square(numAnswer,symbolAnswer="=")

    print symbolAnswer * numAnswer
    puts

    i=0
        while i<numAnswer-2
        puts symbolAnswer + ' ' * (numAnswer - 2) + symbolAnswer
        i+=1
    end
    
    print symbolAnswer * numAnswer
puts
end

print_a_square(numAnswer,symbolAnswer)

