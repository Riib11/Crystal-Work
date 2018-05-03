# private methods can only be used without a dot before the (like, not "self.method")

class Person
  private def say(msg)
    puts "private: #{msg}"
  end

  def say_hello
    say "hello" # using private method
    # can't do: self.say

    other = Person.new
    # can't do: other.say "hello"
  end
end

(Person.new).say_hello

# note: private methods are visible in subclasses

class Employee < Person
  def say_bye
    say "bye" # can do this
  end
end

(Employee.new).say_bye

# private types

class Foo
  private class Bar
  end

  Bar
  # Foo::Bar # not ok
end

# Foo:Bar # not ok
