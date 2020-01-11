# Fibonacci Sequence = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597

def iterative_nth_fibonacci_number(n)
    a = 0
    b = 1
#starting with 0,1, the next number will be 0+1, so result = a+b. result represents the value on position 2,3..n.
#a is 2 values before the current value, b is 1 value before the current value.
# so on the next interation, to get val on position 4, a has to become b(to remain 2 values before current val), then, b has to become a+b, to be the val on position 3.
# thats how u make result(val on position 4) = a (val on position 2) + b (val on position 3)
    for i in 2..n
        result = a+b
        a = b
        b = result
    #p result
    end
    return result
end

def recursive_nth_fibonacci_number(n)
    return 1 if n==1 || n==2

    return recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
end

p iterative_nth_fibonacci_number(10)
p recursive_nth_fibonacci_number(10)
