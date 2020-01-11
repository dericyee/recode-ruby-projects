# Write a method reverse_array to reverse the order of elements in an array. You will take in an array as a parameter, and will return the reversed array. You may not use the .reverse method

def reverse_array(n)
    newArr=[]
    n.each do |i|
        newArr.push(n[-i])
    end
    return newArr
end

p reverse_array([1,2,3,4,5,6,7,8,9])  