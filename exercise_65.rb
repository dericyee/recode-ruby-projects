# Sum of Natural Numbers: Recursion
# Given a number n, find sum of first n natural numbers recursively.
# For example, if the number n is 6, it would return:
# 1 + 2 + 3 + 4 + 5 + 6 = 21
# You have to use recursion in this problem
# You have to determine what are the arguments required for sum
# You can create additional nested methods if you need to

def sum(num)
	if num == 1 || num == 0
		return num
	else      
		return num + sum(num-1)
	end
end



puts sum(9) == 45
puts sum(7) == 28
puts sum(3) == 6
puts sum(0) == 0