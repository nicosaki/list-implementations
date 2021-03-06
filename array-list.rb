# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [nil, nil, nil, nil, nil]
    @size = 0
  end

  def add(value)
    @storage[@size] = value
    @storage += 1
  end

  def delete(value)
    @size -= 1
  end

  def display
    return @storage[0, @size]
  end

  def include?(key)
    @size.times do |i|
      if @storage[i] == key
        return true
      end
    end
    return false
  end

  def size
    @size
  end

  def max
    biggest = 0
    @size.times do |i|
      if @storage[i] > biggest
        biggest = i
      end
    end

  end

end

# Initializing an Array List
arr = ArrayList.new

# Adding Elements to Array List
arr.add(10)
arr.add(20)

# Display the Array List
puts "Displaying Array List:"
arr.display

puts "Delete 10 and then display the array list:"
arr.delete(10)
arr.display
