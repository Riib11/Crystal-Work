# defined starting with capital letter

PI = 3.14

module Earth
  RADIUS = 6.371e6
end

puts PI
puts Earth::RADIUS

# constants can invoke logic

TEN = begin
  a = 0
  while a < 10
    a += 1
  end
  a
end

puts TEN

# psuedoconstants

__LINE__ # is the current line number in the currently executing crystal file. When __LINE__ is declared as the default value to a method parameter, it represents the line number at the location of the method call.

# __END_LINE__ # is the line number of the end of the calling block. Can only be used as a default value to a method parameter.

__FILE__ # references the full path to the currently executing crystal file.

__DIR__ # references the full path to the directory where the currently executing crystal file is located.
