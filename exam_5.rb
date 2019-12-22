# You will write a method more_than_once that takes in a String
# The method will return an array containing the characters that appeared more than twice in the string.

def more_than_once(string)
    newArr = []

    split = string.split('')

    for i in 0..split.length do
      if string.count("#{split[i]}") > 2
        newArr.push(split[i]).uniq!()
      end
    end
    return newArr
end

print more_than_once('mississippi') == ["i", "s"]
puts

print more_than_once('bootcamp') == []
puts