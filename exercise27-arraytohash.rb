# Given this array as your initial data, convert it to an Array of Hash

data_arr = [
  ["Name", "Position", "Age", "Salary"],
  ["Adrian Lim", "Salesperson", "24", "RM2000"],
  ["John Smith", "Clerk", "31", "RM2300"],
  ["Shafie Abdullah", "Manager", "27", "RM3000"]
] #its a nested array

def convert_to_hash(data_arr)
  newHash = []

  for i in 1..data_arr.count-1
    newHash.push({})
  end

  for i in 0..newHash.count-1
    for j in 0..data_arr[0].count-1
      #newHash[i] access the first index in array newHash (which is initially an empty object), data_arr[0][j] is the first index (name,position,age...) in the nested array. This sets the key of the hash. When i say = data_arr[1+i][j], it is setting the key of hash equals to the second index (adrian lim...) in the nested array.
      newHash[i][data_arr[0][j]] = data_arr[1+i][j]
    end
end
return newHash
end

p convert_to_hash(data_arr)