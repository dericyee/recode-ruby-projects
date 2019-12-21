def adult_in_group?(array)
   
   array.each do |x|
    return x.each {|i,h| print "#{h}" }
   end
end

p adult_in_group?  ([
    {name: "Mars", age: 17},
    {name: "Hector", age: 21},
    {name: "Hera", age: 15},
    {name: "Artemis", age: 16}
])

