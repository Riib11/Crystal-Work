class Person
  property age
  getter name : String

  def initialize(@name)
    @age = 0
  end

  def name
    @name
  end

  def age
    @age
  end

  def become_older
    @age += 1
  end

  def become_older(years : Int32)
    @age += years
  end

  def anonymous : Person
    new("anonymous")
  end
end

john = Person.new "John"
smith = Person.new "Smith"

puts john.name
puts smith.name
