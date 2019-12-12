# Write a method squares_of_evens that takes as input an array of numbers, and returns an array that is equal to the squares of all even numbers. Use .map and/or .select

def squares_of_evens(array)
    return array.map {|i|
    i*i 
}

end



p squares_of_evens([-5, -2, 0, 1, 3, 4, 8])

