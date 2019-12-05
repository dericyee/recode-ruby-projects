# You will be recreating the number guessing game you did in Snap! as a text-based command line game!

#     Using the rand method, generate a random number between 1 and 1000
#     Your program will prompt the user to guess the number.
#     When the user’s guess is too high, you will say “Colder” and when the user’s guess is too low, you will say “Hotter”
#     If the user successfully guesses the number, they win!


randNum = rand(1..2)

puts "Guess a number"
userInput = gets.chomp.to_i

if userInput > randNum
    puts "Colder"
elsif userInput < randNum
    puts "Hotter"
else 
    puts "You succesfully guessed the right number! You win!"
end