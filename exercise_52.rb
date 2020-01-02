# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations, only for, while or until

	def selection_sort(searchfrom)
		n = searchfrom.length-1
		
		n.times do |i|
			lowest_index = i
		for j in i+1..n
				lowest_index = j if searchfrom[j] < searchfrom[lowest_index]
			end
			searchfrom[i],searchfrom[lowest_index] = searchfrom[lowest_index],searchfrom[i] if lowest_index != i
		end
	return searchfrom
end

# searchfrom = [6,29,18,2,72,19,18,10,37]
# p selection_sort(searchfrom)

def linear_search(target, searchfrom)
	searchfrom = selection_sort(searchfrom)
	low = 0
	high = searchfrom.length-1

	while low<high do
		mid = (high+low)/2
	if searchfrom[mid] > target
		high = mid-1
	elsif searchfrom[mid] < target
		low = mid+1
	elsif searchfrom[mid] == target
		return mid-1
	end
end
		return -1
end

random_numbers = [6,29,18,2,72,19,18,10,37]
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)

