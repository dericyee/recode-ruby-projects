# Based on your code for Exercise 10, create a Day Organiser

# First, ask for a time as a single input string in military time (e.g. “16:30”) or standard time (e.g. 04:30PM)
# Then, ask for the activity that will be happening during that time as a string
# Ask the user if that is the last activity they would like to input (Y/N)
# If it’s the last activity, then, list out in order of the day, the activity of the day, together with the time in standard time.
# e.g. Your output should be:
# Your activities today are:
# 04:30AM - Wake up, eat breakfast
# 05:30AM - Go to the gym
# 08:00AM - Head for Recode Class


timeArr = []
activityArr = []

def convertToStd(militaryTimeInput)
hour = militaryTimeInput[0] + militaryTimeInput[1]
minute = militaryTimeInput[2] + militaryTimeInput[3]

if hour.to_i > 12
    militaryTimeInput = "#{hour.to_i - 12}:#{minute}PM."

elsif hour.to_i <= 12
    militaryTimeInput = "#{hour}:#{minute}AM."
end
end

loop do
puts "What is the time now? (In military time)"
militaryTimeInput = gets.chomp
timeArr.push(militaryTimeInput)


puts "What is the activity happening during that time?"
militaryActivity = gets.chomp
activityArr.push(militaryActivity)

puts "Is this the last activity you would like to input (Y/N)"
lastActivity = gets.chomp.upcase

newHash = Hash[timeArr.zip(activityArr)] 
if lastActivity == "Y"
    puts "Your activities today are:"

h = {}
timeArr.zip(activityArr) { |a,b| h[a] = b } 

        h.each {|k,v| puts "#{k} - #{v}"}


        break
       end
   

end