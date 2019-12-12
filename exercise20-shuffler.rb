# Write a method shuffler that will take in an array as a parameter, shuffle the elements randomly and returns the shuffled array. You may not use the Array method .shuffle or .shuffle!


def shuffler(arr)
    newArr = []
  for i in 0..arr.count-1 
    spliced = arr.slice!(rand(0..arr.count-1),1)
    newArr.push(spliced)
  end
    return newArr.flatten
end

p shuffler([1,2,3,4,5,6,7,8,9,10,11,12,13])
