# You will write a method, pairs_to_zero that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def pairs_to_zero(nums)

    count = 0
    newArr = []

    for i in 0..nums.length do
       for j in 1..nums.length do
            if nums[i].to_i + nums[j].to_i == 0
            count = count + 1
            end
       end
    end
       return count-2
end

# RIGHT ANSWER 

# def pairs_to_zero(nums)

#    count = 0

#    for i in 0..nums.length-1 do
#       for j in i+1..nums.length-1 do
#            if nums[i] + nums[j] == 0
#                count = count + 1
#            end
#       end
#    end
#       return count
# end


puts pairs_to_zero([ 2, 5, 11, -5, -2, 7 ]) == 2
puts
puts pairs_to_zero([ 21, -23, 24 -12, 23 ]) == 1
puts
