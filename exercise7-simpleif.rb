# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100

puts "1. ELSEIF"
puts "Please insert a number below:"

userNum = gets.chomp.to_i

if userNum < 51
    puts "0 to 50"

elsif userNum > 50 && userNum <101
    puts "51 to 100"

else 
    puts "More than 100"
end


# Rewrite this program using a case statement instead of if statements
puts "2. CASE"
puts "Please insert a number below:"

userNum = gets.chomp.to_i

case userNum
when 0..50
    puts "0 to 50"
when 51..100
    puts "51 to 100"
else
    puts "More than 100"
end