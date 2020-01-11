# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins,target_amount)
  # 1. loop through coins, if any one of it is == target_amount, return it.
  # 2. if coins < target_amount, minus the coin from target_amount and save it in a variable.
  return [] if remaining_coins.sum < target_amount
  return [1] if target_amount == 1
  return [] if remaining_coins == []
  for i in remaining_coins
    return i if i == target_amount
    
    if i < target_amount
    save = i
    temporary = target_amount - save
    end
end   
# remaining_coins.delete_at(remaining_coins.index(remaining_coins[-1]))
remaining_coins.delete_at(remaining_coins.find_index(save))
final = [save] + [return_coins(remaining_coins,temporary)]
return final.flatten.sort
end

# Test Case 3
# Can't get it to remove used coins from array on the second function call onwards.
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

coins=coins.sort
print "3. "
p return_coins(coins, 20) 
#== [10, 5, 2, 2, 1].sort

# Test Case 8
# Same issue as 3. did not remove coins that are used from the array.
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

print "8. "
coins=coins.sort
# p coins
p return_coins(coins, 98) 
#== [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1].sort

# Test Case 9
coins = []
8.times do
  coins << 1
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end
print "9. "
coins=coins.sort
p coins
p return_coins(coins, 98)
#== [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1].sort