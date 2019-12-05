# Write a Ruby script that acts as a calculator:
#     Ask the user for 2 numbers
#     First show the result of the 2 numbers added together
#     Then show the result of the second number deducted by the first number
#     Show the result of the multiplication of the two numbers
#     And finally show the result of the division of the two numbers

puts "Welcome to Ruby Calculator!"
puts "Can I have a first number?"
num1 = gets.chomp.to_i

puts "Can I have the second number?"
num2 = gets.chomp.to_i

# puts "Cool! The two numbers added up is #{firstNum.to_i+secondNum.to_i}."
# puts "#{firstNum} - #{secondNum} will result in #{firstNum.to_i-secondNum.to_i}."
# puts "Multiplying #{firstNum} and #{secondNum} will be #{firstNum.to_i*secondNum.to_i}."
# puts "Finally, #{firstNum} divided by #{secondNum} is #{firstNum.to_i/secondNum.to_i}."

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

puts "Cool! The two numbers added up is #{addition(num1,num2)}."
puts "#{num1} - #{num2} will result in #{subtraction(num1,num2)}."
puts "Multiplying #{num1} and #{num2} will be #{multiplication(num1,num2)}."
puts "Finally, #{num1} divided by #{num2} is #{division(num1,num2)} with a balance of #{modulus(num1,num2)}."