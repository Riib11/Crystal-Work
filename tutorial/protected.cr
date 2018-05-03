# protected makes things only avaliable in local scope, inner, and neighbors (see module example)

class Person
  protected def say(msg)
    puts "protected: #{msg}"
  end

  def say_hello
    say "hello"            # ok, implicit self is a Peron
    self.say "hello again" # ok, explicit self is a Person

    Person.new.say "other hello" # ok, other is a Person
  end
end

class Animal
  def make_a_person_talk
    # Person.new.say "an animal made me talk :(" # not ok,
    # since current type is not a person
  end
end

(Person.new).say "make the person talk!" # not ok,
# since current type is the Program

module NameSpace
  class Foo
    protected def foo
      puts "foo"
    end
  end

  class Bar
    def bar
      # works, since Foo and Bar are under NameSpace
      Foo.new.foo
    end
  end
end

# private top-level methods

# is visible only in this file
private def f(x)
  x + 1
end

puts f 2

# private top-level types

private class Greeter
  def self.greet
    "Hello"
  end
end

Greeter.greet # ok

# but if require into another file, can't get the one from teh other file
