class Dog
    attr_accessor :name, :breed, :age, :bark, :favorite_foods

    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def bark
        if @age<=3
            return @bark.downcase
        else
            return @bark.upcase
        end
    end

    def favorite_food?(food_item)

           return  @favorite_foods.map{|x|x.downcase}.include?(food_item.downcase)
    end
end

noodles = Dog.new("Noodles", "German Shepard", 3, "Bork!", ["Sausage", "Chicken"])
p noodles.bark
p noodles.favorite_foods
p noodles.favorite_food?("SaUsage")
p noodles.age
noodles.age = 5
p noodles.age