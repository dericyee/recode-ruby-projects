# Write a method better_reverse to reverse the order of the elements in an array, but you are not allowed to use a temporary array. You will take in an array as a parameter, and will return the reversed array.

def better_reverse(n)
    return n.map do |i|
       n[-i]
    end
end

p better_reverse([1,2,3,4,5])

#.map makes a copy of the array and mutates the array for u!!