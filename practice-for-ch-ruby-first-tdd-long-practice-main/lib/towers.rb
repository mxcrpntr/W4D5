require_relative "disc"

class Tower
  attr_reader :stack

  def initialize
    @stack = []
  end

  def push(disc)
    raise "disc is too big" if !@stack.empty? && peek.size < disc.size
    @stack.push(disc)
    disc.tower = self
  end

  def pop
    @stack.pop
  end 

  def peek
    @stack.last
  end

end
