# Using for loops, write a Ruby program that:

#     Gets an input number from the user.

#     Uses the input number to print out the answers to a number by number multiplication table.

#     Add borders, and right align the values in each cell in the table

    # puts "#{symbolAnswer} #{i*j} #{symbolAnswer} #{i*2} #{symbolAnswer} #{i*3}#{symbolAnswer} #{i*4}#{symbolAnswer}"

puts "Input a number."
inputNum = gets.chomp.to_i

puts "Choose a symbol."
symbolAnswer = gets.chomp

def multiplicationTable(inputNum,symbolAnswer)

    for i in 1..inputNum do
        puts symbolAnswer * inputNum * 3 + "#{symbolAnswer}"
        print symbolAnswer

        for j in 1..inputNum do
            count = i*j
            #j will finish looping first, then i.
            if count < 10
                print " #{count}#{symbolAnswer}"
            elsif count < 100
                print "#{count}#{symbolAnswer}"
            else 
                print "NAN"
            end
        end
        puts
       
    end
        puts symbolAnswer * inputNum * 3 + "#{symbolAnswer}"
end

multiplicationTable(inputNum,symbolAnswer)