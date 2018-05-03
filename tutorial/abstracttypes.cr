class Animal
end

class Dog < Animal
  def talk
    "Woof!"
  end
end

class Cat < Animal
  def talk
    "Miau"
  end
end

class Person
  getter pet

  def initialize(@name : String, @pet : Animal)
    # @pet has type Animal+, meaning "Animal or any descendant of Animal"
  end
end

john = Person.new "John", Dog.new
jill = Person.new "Jill", Cat.new

# since @pet has type Animal+, meaning it could be just Animal, it doesn't necessarily have pet.talk
# so can't do: john.pet.talk

# to dissallow the superclass for SuperClass+, need to make it abstract

abstract class Color
  abstract def rhyme
end

class Red < Color
  def rhyme
    "bed"
  end
end

class Blue < Color
  def rhyme
    "hue"
  end
end

class ColorPair
  getter c1, c2

  def initialize(@c1 : Color, @c2 : Color)
    # @c1, @c2 have type Color+
  end
end

# even though Color doesn't have rhyme, it isn't considered for Color+, so this compiles now!
cp = ColorPair.new Red.new, Blue.new
puts "rhyme for color1: #{cp.c1.rhyme}"
puts "rhyme for color2: #{cp.c2.rhyme}"
