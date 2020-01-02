# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here
# 1. start a new hash
# 1a. split the string and put it into hash.
# 2. loopping the key value pairs will sum up will go in the format of alphabet:number
# 3. with repeated alphabets, number will number+=1
# 4. then convert it back into a string from a hash by using .each with k and v as the iterators.
def compress_string(string)
    newHash = Hash.new(0)
    split = string.split('')

    for i in 0..split.length-1
        newHash[split[i]]+=1
    end

    str = ""
     newHash.each{|k,v| str=str+("#{v}"+"#{k}")}
     str.slice!("1")
     return str
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()