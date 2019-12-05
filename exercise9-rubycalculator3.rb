# Change the program to allow the user to input the first number, second number, and the type of operation that they want to perform in the calculator
# Change your program to only show the remainder if you have divided two numbers that cannot be evenly divided
# Merge your work from Exercise 3 to tell them the 1000th, 100th, 10th and 0th digit for the answer that you get, only if the digit exist.

puts "Welcome to Ruby Calculator!"
puts "Can I have a first number?"
num1 = gets.chomp.to_i

puts "Can I have the second number?"
num2 = gets.chomp.to_i

puts "What operation do you want to perform? (+ - * /)"
operation = gets.chomp



def addition(num1,num2)
    return num1+num2
end

def subtraction(num1,num2)
    return num1 - num2
end

def multiplication(num1,num2)
    return num1 * num2
end

def division(num1,num2)
    return num1 / num2
end

def modulus(num1,num2)
    return num1%num2
end


if operation == '+'
    puts "Cool! The two numbers added up is #{addition(num1,num2)}."
    puts "The number in the thousandth place is: #{addition(num1,num2).to_s[-4]}"
    puts "The number in the hundredth place is: #{addition(num1,num2).to_s[-3]}"
    puts "The number in the tens place is: #{addition(num1,num2).to_s[-2]}"
    puts "The number in the ones place is: #{addition(num1,num2).to_s[-1]}"

elsif operation == '-'
    puts "#{num1} - #{num2} will result in #{subtraction(num1,num2)}."
    puts "The number in the thousandth place is: #{subtraction(num1,num2).to_s[-4]}"
    puts "The number in the hundredth place is: #{subtraction(num1,num2).to_s[-3]}"
    puts "The number in the tens place is: #{subtraction(num1,num2).to_s[-2]}"
    puts "The number in the ones place is: #{subtraction(num1,num2).to_s[-1]}"

elsif operation == '*'
    puts "Multiplying #{num1} and #{num2} will be #{multiplication(num1,num2)}."
    puts "The number in the thousandth place is: #{multiplication(num1,num2).to_s[-4]}"
    puts "The number in the hundredth place is: #{multiplication(num1,num2).to_s[-3]}"
    puts "The number in the tens place is: #{multiplication(num1,num2).to_s[-2]}"
    puts "The number in the ones place is: #{multiplication(num1,num2).to_s[-1]}"

elsif operation == '/' && modulus(num1,num2)>0
    puts "Finally, #{num1} divided by #{num2} is #{division(num1,num2)} with a balance of #{modulus(num1,num2)}."
    puts "The number in the ones place is: #{modulus(num1,num2).to_s[-1]}"

elsif operation == '/' && modulus(num1,num2)==0
    puts 'Instructions for this exercise dictates that we shall not return anything if the 2 numbers can be evenly divided. :('

end





# if modulus == 0
# puts "The number in the thousandth place is: #{inputNum[-4]}"
# puts "The number in the hundredth place is: #{inputNum[-3]}"
# puts "The number in the tens place is: #{inputNum[-2]}"
# puts "The number in the ones place is: #{inputNum[-1]}"
# end

# inputNum = gets.chomp.to_i
# puts "The number in the thousandth place is: #{inputNum/1000}"
# inputNum = inputNum %1000

# puts "The number in the hundredth place is: #{inputNum/100}"
# inputNum = inputNum %100
# puts "The number in the tens place is: #{inputNum/10}"

# puts "The number in the ones place is: #{inputNum%10}"