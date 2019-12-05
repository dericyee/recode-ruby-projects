# Add an extra input: Ask for the user’s gender

puts "What is your first name?"
firstNameAnswer = gets.chomp

puts "What is your last name?"
secondNameAnswer = gets.chomp

puts "Hello #{firstNameAnswer}, how old are you?"
ageAnswer=gets.chomp.to_i

puts "What is your gender?"
genderAnswer = gets.chomp

if genderAnswer == "male" && ageAnswer < 20
    puts "You're such a young boy!"
elsif genderAnswer == "male" && ageAnswer >=20 && ageAnswer <=40
    puts "How's work, mister?"
elsif genderAnswer == "male" && ageAnswer >40
    puts "Wow! I admire your experience, sir!"
elsif genderAnswer == "female" && ageAnswer < 20
    puts "You're such a young girl!"
elsif genderAnswer == "female" && ageAnswer >=20 && ageAnswer <=40
    puts "How's work, miss?"
else 
    puts "Wow! I admire your experience, madam!"
end


# puts "#{firstNameAnswer} #{secondNameAnswer}, you will be:"
# puts "#{ageAnswer.to_i + 10} years in 10 years time"
# puts "#{ageAnswer.to_i + 20} years in 20 years time"
# puts "#{ageAnswer.to_i + 30} years in 30 years time"
# puts "#{ageAnswer.to_i + 40} years in 40 years time"
# puts "#{ageAnswer.to_i + 50} years in 50 years time"

# fullName = "#{firstNameAnswer} #{secondNameAnswer}"
# puts "Your full name reversed is #{fullName.reverse}"
# puts "Your full name has #{fullName.length}"
# puts "Your full name in uppercase is #{fullName.upcase}"

