#Write a Ruby script that does this interaction

puts "What is your first name?"
firstNameAnswer = gets.chomp

puts "What is your last name?"
secondNameAnswer = gets.chomp

puts "Hello #{firstNameAnswer}, how old are you?"
ageAnswer=gets.chomp

puts "#{firstNameAnswer} #{secondNameAnswer}, you will be:"
puts "#{ageAnswer.to_i + 10} years in 10 years time"
puts "#{ageAnswer.to_i + 20} years in 20 years time"
puts "#{ageAnswer.to_i + 30} years in 30 years time"
puts "#{ageAnswer.to_i + 40} years in 40 years time"
puts "#{ageAnswer.to_i + 50} years in 50 years time"
