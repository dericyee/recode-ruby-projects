# Write a method nth_power_of_evens that takes as input an integer n as well as an array of numbers, and returns an array that is equal to the nth power of all even numbers in the array. Use .map and/or .select

def nth_power_of_evens(arr,n)
return arr.select {|i|i % 2 == 0 }.map {|i|i**n}
end

p nth_power_of_evens([-5, -2, 0, 1, 3, 4, 8], 3)