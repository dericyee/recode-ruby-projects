grades = Hash.new{|k,v| k[v] = [] }
grades["me"]<<2
grades["me"]<<5


p grades["me"]