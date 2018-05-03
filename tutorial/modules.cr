# modules are for:
# - namespaces for defining other types, methods, and constants
# - partial types that can be mixed in other types

module Curses
  class Window
  end
end

Curses::Window.new

# so can avoid name clashes

module ItemsSize
  def size
    items.size
  end
end

class Items
  include ItemsSize

  def items
    [1, 2, 3]
  end
end

puts Items.new.size

# can extend modules

module SomeSize
  def size
    3
  end
end

class AnItemsSize
  extend SomeSize
end

puts AnItemsSize.size

module SomeModule
  class SomeType
  end

  def some_method
    1
  end
end

include SomeModule

SomeType.new # ok, since we are now in SomeModule's scope
some_method

# can extend self to make module a namespace

module Base64
  extend self

  def encode64(s)
  end

  def decode64(s)
  end
end

# then can do:
Base64.encode64 "hello"

# or
include Base64
decode64 "hello"

# modules cannot be instantiated
