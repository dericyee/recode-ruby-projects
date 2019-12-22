# You will write a method only_unique_elements that takes in an Array
# The method returns a new array where all duplicate elements are removed. 
# You must solve this using a hash.

def only_unique_elements(arr)
    newHash = Hash.new(0)

    arr.each{|x|newHash[x]=1}
    
    newHash.to_a.flatten().select{|x|x.is_a?(String)==true}
end

print only_unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) == ["a", "b", "c"]
puts

print only_unique_elements(['cow', 'goat', 'sheep', 'cow', 'cow', 'sheep']) == ["cow", "goat", "sheep"]
puts