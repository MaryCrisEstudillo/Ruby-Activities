class Confection
    def prepare
        "Baking at 350 degrees for 25 minutes."
    end
end
class Banana_Cake < Confection
    def prepare
        super
    end
end
class Cupcake < Confection
    def prepare
        super + " Applying frosting"
    end
end

puts "Cupcake: #{Cupcake.new.prepare}"
puts "Banana Cake: #{Banana_Cake.new.prepare}"
