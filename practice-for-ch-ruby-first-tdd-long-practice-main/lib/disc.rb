
class Disc
  attr_accessor :tower, :size
  def initialize(size, tower)
    @size = size
    @tower = tower
  end

  def inspect
    size.to_s
  end

end