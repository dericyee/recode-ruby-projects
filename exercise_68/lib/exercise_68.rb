# 1. Partition
def partition(arr, num)
 newArr1 = []
 newArr2 = []
 newArr3 = []
 for i in 0..arr.length-1
    if arr[i] < num
        newArr1.push(arr[i])
    end
    if arr[i]>= num
        newArr2.push(arr[i])
    end
 end
 return  newArr3.push(newArr1).push(newArr2)
end
partition([11, 5, 13, 2, 3],7)
partition([1, 2, 4, 3, 5, 7], 5)
partition([1, 2, 4, 3], 0)

# 2. Merge
def merge(hash1,hash2)
    newHash = hash1.clone
     hash2.each{|k,v| newHash[k]=v}
     return newHash
end

hash_1 = {"a"=>10, "b"=>20}
hash_2 = {"c"=>30, "d"=>40, "e"=>50}
p merge(hash_1, hash_2)

# 3. Censor
def censor(str,arr)
    split = str.split(' ')
    for i in 0..split.length-1
        for j in 0..arr.length-1
            if split[i][1] == arr[j][1] ||split[i][1].downcase == arr[j][1].downcase
                split[i].gsub!(/[aeiou]/i,"*")
            end
        end
    end
    return split.join(' ')
end
censor("Gosh darn it", ["gosh", "darn", "shoot"])
censor("SHUT THE FRONT DOOR", ["door"])

# 4. Power Of Two
def power_of_two?(num)
    newArr = []
    for i in 0..num
        if 2**i==num
            newArr.push(num)
        end
    end
    if newArr==[]
        return false
    else
        return true
    end
end
power_of_two?(17)
power_of_two?(32)
power_of_two?(64)
power_of_two?(1)
power_of_two?(6)
power_of_two?(7)
power_of_two?(28)
power_of_two?(100)

# 5. Palindrome
def palindrome?(str)
    for i in 0..str.length-1
        if str[i]!=str[-1-i]
            return false
        end
    end
            return true
end
palindrome?("tot")
palindrome?("racecar")
palindrome?("madam")
palindrome?("aa")
palindrome?("a")
palindrome?("cat")
palindrome?("greek")
palindrome?("xabcx")

# 6. Substrings
def substrings(str)
   newArr = []
   for i in 0..str.length-1
    for j in i..str.length-1
        newArr.push(str[i..j])
       end
   end
   return newArr
end
substrings("jump")
# ["j", "ju", "jum", "jump", "u", "um", "ump", "m", "mp", "p"]
# [0,0],[0,1],[0,2],[0,3],[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]

# 7. Palindrome Substrings
def palindrome_substrings(str)
    finalArr = []
    substringsArr = substrings(str)
    for i in 0..substrings(str).length-1
    if substringsArr[i].length>1 && palindrome?( substringsArr[i])
        finalArr.push( substringsArr[i])
    end
end
    return finalArr
end
palindrome_substrings("abracadabra")