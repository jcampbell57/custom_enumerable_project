module Enumerable
  # Your code goes here
  def my_each_with_index
    length.times { |i| yield(self[i], i) } if block_given?
    self
  end

  def my_select
    selected = []
    my_each { |i| selected << i if yield(i) }
    selected
  end

  def my_all?
    result = true
    my_each { |i| result = false if yield(i) == false }
    result
  end

  def my_any?
    result = false
    my_each { |i| result = true if yield(i) == true }
    result
  end

  def my_none?
    result = true
    my_each { |i| result = false if yield(i) == true }
    result
  end

  def my_count
    if block_given?
      count = 0
      my_each { |i| count += 1 if yield(i) == true }
      count
    else
      length
    end
  end

  def my_map
    array = []
    my_each { |i| array << yield(i) }
    array
  end

  def my_inject(value = 0)
    my_each { |i| value = yield(value, i) }
    value
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    length.times { |i| yield(self[i]) } if block_given?
    self
  end
end
