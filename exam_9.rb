# You will write a method, only_name that takes in an Array of Hashes
# The method returns a new array containing the names of each hash.
# You have to use .map to solve this

def only_name(arr)
   newArr = []

   for i in 0..arr.length-1
      newArr.push(arr[i]["name"])
   end
p newArr
end


# RIGHT ANSWER

# def only_name(arr)
#   res = []
#   arr.map { |el| res.push(el["name"]) }
#   return res
# end

# def only_name(arr)
#    return arr.map { |hash| hash["name"] }
# end

pets = [
  {"type"=>"dog", "name"=>"Ralph"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Fluffy"},
  {"type"=>"cat", "name"=>"Mr. Tibbers"}
]
print only_name(pets) == ["Ralph", "Sunny", "Saki", "Fluffy", "Mr. Tibbers"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Germany", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print only_name(countries) == ["Japan", "Germany", "Kenya"]
puts