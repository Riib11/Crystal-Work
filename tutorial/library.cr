class Complex
  @re : Int32
  @im : Int32

  def initialize(@re, @im)
  end

  def unit_i
    ComplexMath.i(out 1)
end
end

lib ComplexMath
    fun i(x : Int32)
end