class NoOrangesError < StandardError
end

class OrangeTree
    attr_reader :height, :age, :oranges

    @@max_age = 70

    def initialize
        @height = 0
        @age = 0
        @oranges = []
    end

    def age!
            @age = @age+1
            @height += 100
            if @age>=3
                rand(1..10).times {@oranges << Orange.new(rand(6.0..8.0).round(1))} 
            end
    end

    def dead?
        if @age>=70
            return true
        else
            return false
        end
    end

    def any_oranges?
       if oranges.count > 0
        return true
       else
        return false
       end
    end

    def pick_an_orange!
        if any_oranges?
            @oranges.pop
        else
            raise NoOrangeError "No oranges left on this tree!"
        end
    end
end

class Orange
    attr_reader :diameter
    def initialize (diameter)
        @diameter = diameter
    end
end
# avg_diameter = 
# V3
tree = OrangeTree.new
until tree.any_oranges?
    puts "Tree is #{tree.age} years old and #{tree.height} cm tall" 
    tree.age!
end 

puts "Tree is #{tree.age} years old and #{tree.height} cm tall"

until tree.dead?
  basket = []

  #It places the oranges in the basket
  #IT PLACES THE ORANGES IN THE basket

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

 # It's up to you to calculate the average diameter for this harvest.
 total_diameter = 0
 basket.each {|o| total_diameter += o.diameter}

 avg_diameter = (total_diameter/basket.length).round(2)

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/100.0} m"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
  puts ""

  #Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"


