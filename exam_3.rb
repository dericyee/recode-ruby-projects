# You will write a method element_count that takes in an Array
# This method returns a hash representing the count of each element in the array.

def element_count(arr)
    newHash = Hash.new(0)
    arr.each{|x|newHash[x]+=1}
    return newHash

end

puts element_count(["a", "b", "a", "a", "b"]) == {"a"=>3, "b"=>2}
puts
puts element_count(["red", "red", "blue", "green"]) == {"red"=>2, "blue"=>1, "green"=>1}
puts