
def my_uniq(array)
  new_array = []
  array.each {|el| new_array << el if !new_array.include?(el)}
  new_array
end

class Array
  def two_sum
    new_array = []
    (0...length-1).each do |i|
      (i+1...length).each do |j|
        new_array << [i,j] if self[i] == -self[j]
      end
    end
    new_array
  end
end

def my_transpose(array)
  new_array = Array.new(array[0].length) {Array.new(0)}
  (0...array.length).each do |i|
    (0...array[0].length).each do |j|
      new_array[j] << array[i][j]
    end
  end
  new_array
end

def stock_picker(arr)
  max_ind = nil
  max_margin = 0
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      if arr[j] * 1.00 /arr[i] > max_margin 
        max_ind = [i,j]
        max_margin = arr[j] * 1.00 /arr[i]
      end
    end
  end
  max_ind
end