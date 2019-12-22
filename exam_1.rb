# You will write a method find_factorial(num) that takes in an Integer
# The method should returns the product of all numbers from 1 up to and including num

def find_factorial(num)
    count = 1
    for i in 1..num do
        count = count * i
    end
    return count
end

puts find_factorial(3) == 6 # because 1 * 2 * 3 = 6
puts

puts find_factorial(5) == 120 # because 1 * 2 * 3 * 4 * 5 = 120
puts