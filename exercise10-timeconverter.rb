# You will ask the time in military time (e.g. 16:30) and convert the time to standard time (e.g. 04:30PM)

puts "What is the time now? (In military time)"
militaryTimeInput = gets.chomp


hour = militaryTimeInput[0] + militaryTimeInput[1]
minute = militaryTimeInput[2] + militaryTimeInput[3]


if hour.to_i > 12
    puts "#{militaryTimeInput} in military time is #{hour.to_i - (12)}:#{minute}PM."

elsif hour.to_i <= 12
    puts "#{militaryTimeInput} in military time is #{hour}:#{minute}AM."
end