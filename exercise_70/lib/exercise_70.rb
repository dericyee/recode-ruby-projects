# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

# 1. Largest Prime Factor
def prime_number(num)
    return false if num<2

    for i in 2...num
        if num%2==0
            return false
        end
    end
    return true
end

def arr_of_primes(num)
  newArr = []
    for i in 0..num
        if prime_number(i)
        newArr.push(i)
        end
    end
    return newArr
end
arr_of_primes(24)

def largest_prime_factor(num)
    newestArr = arr_of_primes(num)
    latestArr=[]
        for i in 0..newestArr.length-2
            if num%newestArr[i]==0
                latestArr.push(newestArr[i])
            end
        end
        if latestArr == []
            return num
        else
            return latestArr.max
        end
end
# p prime_number(3)
# p largest_prime_factor(15)
# p largest_prime_factor(7)
# p largest_prime_factor(24)
# p largest_prime_factor(2)

# 2. Unique Chars
def unique_chars?(str)
    if str.split('').uniq == str.split('')
        return true 
    else
     return false
    end
end
unique_chars?("computer")

# # 3. Dupe Indices
def dupe_indices(arr)
    newHash = Hash.new(0)
    for i in 0..arr.length-1
        if arr.count(arr[i])>1
            newHash[arr[i]] = []
        end
    end

    newHash.each{|k,v|
        for i in 0..arr.length-1
            if k==arr[i]
                v.push(i)
            end
        end
                }

    return newHash
end
dupe_indices(["a", "b", "c", "c", "b"])

# 4. Ana Array
def ana_array(arr1, arr2)
    newArr = []
    newArr2 = []
        for i in 0..arr2.length
            if arr1.index(arr2[i])
                newArr.push(arr2[i])
            end
        end

        for j in 0..arr1.length
            if arr2.index(arr1[j])
                newArr2.push(arr1[j])
            end
        end
    if newArr == arr2 && newArr2 == arr1
        return true
    end
    return false
end
 ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"])
 ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])
 ana_array(["cat"], ["cat", "dog"])
 ana_array(["cat", "dog"], ["cat"])
