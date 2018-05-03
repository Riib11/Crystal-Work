def int_to_int(&block : Int32 -> Int32)
  block
end

proc = int_to_int { |x| x + 1 }
puts proc
puts proc.call(1)

class Model
  def on_save(&block)
    @on_save_callback = block
  end

  def save
    if callback = @on_save_callback
      callback.call
    end
  end
end

model = Model.new
model.on_save { puts "Saved!" }
model.save

# without specifying input and/or output, then that part is not cosndiered in the proc type
def some_proc(&block : Int32 ->)
  block
end

proc = some_proc { |x| x + 1 }
puts proc.call(1).class # => Nil
