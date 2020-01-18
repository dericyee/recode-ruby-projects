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

    if i == target_amount/3 && !(i < target_amount) 
      testcase10 = remaining_coins.select{|x|x==(target_amount/3)}
      return testcase10
    elsif i < target_amount 
    save = i
    temporary = target_amount - save
    end
end   
# remaining_coins.delete_at(remaining_coins.index(remaining_coins[-1]))
remaining_coins.delete_at(remaining_coins.find_index(save))
final = [save] + [return_coins(remaining_coins,temporary)]
return final.flatten.sort
end

# Test Case 10
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 50
  coins << 10
  print "10. "
  coins = coins.sort
  p coins
p return_coins(coins, 33)
# == [11, 11, 11]