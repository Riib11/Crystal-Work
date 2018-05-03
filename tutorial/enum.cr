enum Color
  Red
  Blue
  Green
  Black = 10 # force a value
  White      # starts where count is at now

  def red?
    self == Color::Red
  end
end

puts Color::Red
puts Color::Red.value
puts Color::White.value

# flags
@[Flags]
enum IOMode
  Read  # 1
  Write # 2
  Async # 4
  Other # 8
end

puts IOMode::Async.value
puts IOMode::Other.class

# implict constants

puts IOMode::None.value # 0
puts IOMode::All.value  # 1 + 2 + 4 + 8 = 15

# from integer

puts Color.new 1
puts Color.new 100 # allowed, but will just be a proxy of input value

# methods
puts Color::Red.red?
puts Color::Blue.red?

# usage

def paint(color : Color)
  case color
  when Color::Red
    puts "painting red!"
  else
    raise "unknown color: #{color}"
  end
end

paint Color::Red
# paint Color::Blue # raises exception
