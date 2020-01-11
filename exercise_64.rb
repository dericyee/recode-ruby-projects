# Number Patterns: Recursion
# Given a number n, make an array of a list of numbers without using any loop.
# The sequence of numbers should be from the number n, reduced by 5 each print, to 0 or the first negative number, and then increased by 5 each print, back up to the number n.
# For example, if the number n is 20, it would return:
# [20, 15, 10, 5, 0, 5, 10, 15, 20]
# You have to use recursion in this problem
# You have to determine what are the arguments required for print_pattern
# You can create additional nested methods if you need to

def make_pattern(num,i=5)
    newArr =[]
        if num < -i+1
            return []
         else
            newArr = make_pattern(num - i)
            newArr.unshift(num)
            if num>0
            newArr.push(num)
            end
        end
    return newArr
end

puts make_pattern(20) == [20, 15, 10, 5, 0, 5, 10, 15, 20]
puts make_pattern(17) == [17, 12, 7, 2, -3, 2, 7, 12, 17]
puts make_pattern(3) == [3, -2, 3]
puts make_pattern(0) == [0]

# def make_pattern_iterative(num)
# 	newArr=[num]
# 	i = num
# 	while i > 0 
# 		newArr.push(i-5)
# 		i-=5
# 	end
	
# 	while i<num
# 		newArr.push(i+5)
# 		i+=5
# 	end
# 	return newArr
# end
# make_pattern_iterative(20) 
# make_pattern_iterative(17) 
# make_pattern_iterative(3) 
# make_pattern_iterative(0) 
