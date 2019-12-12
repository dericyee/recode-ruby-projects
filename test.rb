def replace_elements!(array, hash)

    hash.each do |k,v|
       array.map!{|x| 
        if x == k
            x = v
        else 
            x
        end
    }
 
    end
        return array
end

replace_elements!([4, 2, 0, 2], {2=>"two", 0=>"zero", 5=>"five"})
