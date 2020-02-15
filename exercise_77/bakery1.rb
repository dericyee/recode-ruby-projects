class Bakery
    @@cookies = []

    def initialize(cookie)
        @@cookies << cookie
    end

    def self.cookies
        @@cookies
    end
end

class Cookie < Bakery
    attr_accessor :ready, :name 
    def initialize(name)
        @ready = false
        @name = name
        super(self)
    end
end


class Oven < Cookie
    attr_accessor :oven_cookies
    def initialize
        @oven_cookies = []
    end

    def add_cookies(cookie)
        oven_cookies << cookie
    end

    def remove_cookies
        self.oven_cookies = []
    end

    def start=(seconds)
        if oven_cookies.empty?
            puts "Can't start. No cookie in oven."
            return
        end
        until seconds == 0
            puts "Baking... #{seconds}"
            seconds -= 1
        end
        oven_cookies.each {|cookie| cookie.ready = true} 
    end
end

Cookie.new("A")
Cookie.new("B")
Cookie.new("C")

p Bakery.cookies
oven = Oven.new
Bakery.cookies.each do |x|
    oven.add_cookies(x)
end
oven.start = 3
oven.remove_cookies
p Bakery.cookies