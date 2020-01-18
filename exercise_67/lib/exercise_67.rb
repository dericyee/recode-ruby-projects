# 1. Average
def average(a,b)
    a = a.to_f
    return (a +b)/2
end
# p average(7,8)

# 2. Average Array
def average_array(arr)
    return arr.sum.to_f/arr.length
end
# p average_array([2, 4, 6])

# 3. Repeat
def repeat(str,num)
    return "#{str}"*num
end
# p repeat("happy", 2)

# 4. Yell
def yell(str)
    return str.upcase + "!"
end
# p yell("hello")

# 5. Alternating Case
def alternating_case(str)
    # Both Works!
    split = str.split(' ')
    # i = 0
    # while i < split.length-1
    #     if i==0 || i%2==0
    #     split[i]=split[i].upcase
    #     split[i+1]=split[i+1].downcase
    #     end
    #     i+=2
    # end
    # return split.join(' ')
    split = split.map.with_index{|x,index|
        if index==0 or index%2==0
            x=x.upcase
        else
            x=x.downcase
        end
    }
    return split.join(' ')
end
# p alternating_case("code never lies, comments sometimes do.")
# p alternating_case("HEY PROGRAMMERS")

# 6. Hipsterfy
def hipsterfy(str)
    strReverse = str.reverse
    a=strReverse.sub(/[aeiou]/,"")
    return a.reverse
end
# p hipsterfy("tonic")

# 7. Vowel Counts
def vowel_counts(str)
    newHash=Hash.new(0)
    newArr = str.downcase.split('').select{|i|i.match(/[aeiou]/)}
    newArr.each{|x|newHash[x]=newArr.count(x)}
    return newHash
end
# p vowel_counts("code bootcamp")

# 8. Caesar Cipher
def caesar_cipher(str,num)
    lower=("a".."z").to_a
    split=str.split('')
    scanned = str.scan(/\W|\d|\_/)  
        return split.map do |x|
            if scanned.include?(x)
                x
            elsif lower.include?(x)
                before =  lower.index(x)
                after = before+num
                x=lower[after%26]
            end
        end.join('') 
end
# p caesar_cipher("apple1", 1)
# p caesar_cipher("hello", 5)
# p caesar_cipher("zebra", 4)
# p caesar_cipher("whoa", 26)
# p caesar_cipher("whoa", 52)
# p caesar_cipher("123 _-!?@%", 3)
# p caesar_cipher("welcome to week 5, day 2", 2)