# A unicorn is a `Legendary` animal that has been described since antiquity as a beast with a large, spiraling horn projecting from its forehead.
class Unicorn < Legendary
  # Creates a unicorn with the specified number of *horns*.
  # ```text
  # "I'm a unicorn"
  # ```
  # unicorn noise: `#noise`
  def initialize(@horns = 1)
    raise "Not a unicorn!" if @horns != 1
  end

  # Returns the number of horns this unicorn has
  #     Unicorn.new.horns # => 1
  def horns
    @horns
  end

  # NOTE: Unicorns don't speak english
  # Returns the noise this unicorn makes, as a string
  def noise
    "adkasdasdkj"
  end

  # TODO
  def gallop
  end

  # FIXME
  def fly
    100
  end

  # DEPRECATED: use `#noise`
  def talk
    "ima unicron"
  end

  # OPTIMIZE
  def fire
  end
end

class Legendary
end
