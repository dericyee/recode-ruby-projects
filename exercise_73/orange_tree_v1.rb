# Which of the three attr_ methods should you be using and why?
# I chose to use attr_reader because we're only getting information, not setting it.

class OrangeTree
    attr_reader :height, :age
    def initialize(height,age)
        @height = height
        @age = age
    end
end

class Orange
    attr_reader :diameter
    def initialize (diameter)
        @diameter = diameter
    end
end

tree = OrangeTree.new("10m",50)
orange = Orange.new("20cm")
p tree.height
p tree.age
p orange.diameter