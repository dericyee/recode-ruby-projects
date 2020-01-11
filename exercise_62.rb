# Prime Numbers: Recursion
# Write a method, is_prime?
# You have to determine what are the arguments required for is_prime
# The method should be used to determine if a number is a prime number recursively.


def is_prime?(num,i=2)

		if num<=2
			return true #prime
		end
		if num % i == 0 
			return false #not prime
		end
		if i > num-2 #because u r trying to compare it to [2...num].count. when i increases, and becomes more than [2..num].count, which also means none of n is divisable by i, making it a prime number.
			return true #prime
		end

		return is_prime?(num, i + 1) 
	  
end


puts is_prime?(15)
puts is_prime?(17) == true
puts is_prime?(15) == false
puts is_prime?(37) == true