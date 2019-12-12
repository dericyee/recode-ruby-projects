# Given this array as your initial data, convert it to an Array of Hash

# => [{"Name": "Adrian Lim", "Position": "Salesperson", "Age": "24", "Salary": "RM2000" }, {...}, {...}]
  #  i in 1..data_arr do
  # data_arr[0].each {|j| data_arr[1].each {|x|  newHash[j]=x}}
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
      val = data_arr[1+i]
    for j in 0..data_arr[0].count-1
      newHash[i][data_arr[0][j]] = val[j]

    end
end
return newHash
end

p convert_to_hash(data_arr)