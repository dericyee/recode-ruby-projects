# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

def binary_search(array, target)
	low = 0
	high = array.length-1

	while low<high do
		mid = (high+low)/2
	if array[mid] > target
		high = mid-1
	elsif array[mid] < target
		low = mid+1
	elsif array[mid] == target
		return mid
	end
end
		return -1
end

test_array = (100..200).to_a
puts binary_search(test_array, 135) == 35
# p binary_search((100..200).to_a, 135)

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(test_array, 35) == -1