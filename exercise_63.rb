# Palindrome: Recursion
# Write a method, is_palindrome?, that accepts a number
# The method should use recursion to check if a number provided is a palindrome
# The method should return true or false
# You can create additional nested methods

def is_palindrome?(num)
    # tostr = num.to_s
    num = num.to_s
    if  num.length == 0 #if length of str is empty meaning we get to remove the first and last digit in num with no leftover, which makes it a palindrome.
        return true
#if first char != last char OR theres 1 digit left after removing first and last digit after each function call, means its not a paldinrome, so return false.
    elsif num[0] != num[-1] || num.length == 1 
        return false
    else 
        return is_palindrome?(num[1..-2])#remove first and last character during each function call
    end
  
end

puts is_palindrome?(88) == true
puts is_palindrome?(12321) == false
puts is_palindrome?(7992) == false
puts is_palindrome?(7227) == true
