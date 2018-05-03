class Person
  @age : Int32

  def initialize(@age)
  end

  def become_older(by = 1)
    @age += by
  end
end

john = Person.new "John"
john.become_older
john.become_older 2
john.become_older by: 5
