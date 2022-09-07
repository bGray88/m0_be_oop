# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(hungry)
        @hungry = hungry
        @color = "silver"
    end

    def say(message)
        return "*~*" + message + "*~*"
    end
end

pegasus = Unicorn.new("no")
p pegasus
p pegasus.say("Come frolic with me!")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end

    def thirsty?
        @thirsty
    end
end

vlad = Vampire.new("Vlad", "Snake")
p vlad
p vlad.thirsty?
vlad.drink
p vlad.thirsty?

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @times_eaten = 0
    end

    def eat
        @times_eaten += 1
        @times_eaten >= 4 ? @is_hungry = false : nil
    end

    def hungry?
        @is_hungry
    end
end

godzilla = Dragon.new("Godzilla", "Cransten", "Green")
p godzilla
p godzilla.hungry?
3.times {godzilla.eat}
p godzilla.hungry?
godzilla.eat
p godzilla.hungry?

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :disposition

    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def has_ring
        @name == "Frodo" ? @has_ring = true : nil
        @has_ring
    end

    def celebrate_birthday
        @age += 1
        @age >= 33 ? @is_adult = true : nil
        @age >= 101 ? @is_old = true : nil
    end

    def adult?
        @is_adult
    end

    def old?
        @is_old
    end
end

sam_wise = Hobbit.new("Sam", "Friendly")
p sam_wise
p sam_wise.disposition
30.times {sam_wise.celebrate_birthday}
p sam_wise.adult?
p sam_wise.old?
3.times {sam_wise.celebrate_birthday}
p sam_wise.adult?
65.times {sam_wise.celebrate_birthday}
p sam_wise.old?
3.times {sam_wise.celebrate_birthday}
p sam_wise.old?
p sam_wise.has_ring
frodo_baggins = Hobbit.new("Frodo", "Adventurous")
p frodo_baggins.disposition
p frodo_baggins.has_ring
