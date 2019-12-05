# Write a Ruby script that acts to get specific data from numbers
# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:

#         thousands place
#         hundreds place
#         tens place
#         ones place

puts "What is your number?"
inputNum = gets.chomp

puts "The number in the thousandth place is: #{inputNum[-4]}"
puts "The number in the hundredth place is: #{inputNum[-3]}"
puts "The number in the tens place is: #{inputNum[-2]}"
puts "The number in the ones place is: #{inputNum[-1]}"

inputNum = gets.chomp.to_i
puts "The number in the thousandth place is: #{inputNum/1000}"
inputNum = inputNum %1000

puts "The number in the hundredth place is: #{inputNum/100}"
inputNum = inputNum %100
puts "The number in the tens place is: #{inputNum/10}"

puts "The number in the ones place is: #{inputNum%10}"