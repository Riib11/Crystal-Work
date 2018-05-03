# type names are camel-cased

alias MyType = Int32

# method names are underscore_cased

def get_name
  "henry"
end

# variable names are underscore_cased
class Greeting
  @@default_greeting = "Hello world!"

  def initialize(@custom_greeting = nil)
  end

  def print_greeting
    puts (@custom_greeting || @@default_greeting)
  end
end

Greeting.new.print_greeting

# constants are all-caps

LUCK_NUMBERS      = [3, 7, 11]
DOCUMENTATION_URL = "http://reed.edu"

# acronyms

# in class named, all-caps

class HTTP
end

# in method names, all-lower
def get_http
end

# lib names start with "Lib"

lib LibHenry
end
