class OrangeTree
    attr_reader :height, :age

    @@max_age = 70
    @@annual_height_increase = "5m"

    def initialize(height,age)
        @height = height
        @age = age
    end

    def age!
        if @height.to_i < @@max_age
            @age = @age+1
            new_height = @height.to_i + @@annual_height_increase.to_i
            @height = new_height.to_s + "m"
        end
    end

    def dead?
        if @age>=70
            return true
        else
            return false
        end
    end
end

class Orange
    attr_reader :diameter
    def initialize (diameter)
        @diameter = diameter
    end
end

# V1
tree = OrangeTree.new("10m",50)
orange = Orange.new("20cm")
p tree.height
p tree.age
p orange.diameter

# V2
# tree.age!
# p tree.height
# p tree.age
# dead_tree = OrangeTree.new("100m",71)
# p dead_tree.dead?
OrangeTree.height


