# You will write two methods:

# You will write a method is_prime? that takes in a number
# This method returns a boolean, indicating whether the number is prime. 
# Note: A prime number is only divisible by 1 and itself.

# The method pick_primes that takes in an array of numbers
# The method should return a new array containing only the prime numbers
# The method pick_primes should use the method is_prime?

def is_prime?(num)
        newestArr=[]
        
        n.each do |x|
            prime_test=[]
            for i in 1..x
                if x%i == 0
                    prime_test = prime_test.push(i)
                end
            end
            if prime_test.include?(x) && prime_test.include?(1) && prime_test.length==2
                newestArr=newestArr.push(x)
            end
end
return newestArr
end

def pick_primes(numbers)
    newestArr=[] 
        n.each do |x|
            prime_test=[]
            for i in 1..x
                if x%i == 0
                    prime_test = prime_test.push(i)
                end
            end
            if prime_test.include?(x) && prime_test.include?(1) && prime_test.length==2
                newestArr=newestArr.push(x)
            end
end
return newestArr
end

print pick_primes([2, 3, 4, 5, 6]) == [2, 3, 5]
puts

print pick_primes([101, 20, 103, 2017]) == [101, 103, 2017]
puts