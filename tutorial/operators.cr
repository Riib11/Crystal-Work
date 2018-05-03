struct Vector2
  getter x, y

  def initialize(@x : Int32, @y : Int32)
  end

  def +(v)
    Vector2.new x + v.x, y + v.y
  end

  def to_s
    [x, y].to_s
  end
end

v1 = Vector2.new 1, 0
v2 = Vector2.new 0, 1
v3 = v1 + v2

puts v1.to_s, v2.to_s, v3.to_s

struct MyArray
  def initialize(@a : Int32, @b : Int32, @c : Int32)
  end

  def [](i)
    case i
    when 1
      @a
    when 2
      @b
    when 3
      @c
    else
      nil
    end
  end
end

arr = MyArray.new 1, 2, 3
puts arr[1]
puts arr[2]
puts arr[3]
puts arr[4]
