class Person
  def initialize(@name : String)
  end

  def say_hello
    puts "#{@name} says hello!"
  end
end

class Employee < Person
  def initialize(@name : String, @salary : Float64)
  end

  def say_hello
    super # provides same arguments as given to this function
    # or can manually pass arguments
    puts "Employee #{@name} says hello!"
  end

  def pay
    puts "Paid $#{@salary} to #{@name}."
  end
end

henry = Employee.new "Henry", 11.50
henry.pay
henry.say_hello
