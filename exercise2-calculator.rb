# Write a Ruby script that acts as a calculator:
#     Ask the user for 2 numbers
#     First show the result of the 2 numbers added together
#     Then show the result of the second number deducted by the first number
#     Show the result of the multiplication of the two numbers
#     And finally show the result of the division of the two numbers

puts "Welcome to Ruby Calculator!"
puts "Can I have a first number?"
firstNum = gets.chomp

puts "Can I have the second number?"
secondNum = gets.chomp

puts "Cool! The two numbers added up is #{firstNum.to_i+secondNum.to_i}."
puts "#{firstNum} - #{secondNum} will result in #{firstNum.to_i-secondNum.to_i}."
puts "Multiplying #{firstNum} and #{secondNum} will be #{firstNum.to_i*secondNum.to_i}."
puts "Finally, #{firstNum} divided by #{secondNum} is #{firstNum.to_i/secondNum.to_i}."
