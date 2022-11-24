class Demo
  attr_accessor :val
  
  def initialize(val)
    @val = 42
  end
  def self.run
    42
  end

  def calc(a, b)
    a * b
  end

  def my_arr
    [1, 2, 3]
  end
end