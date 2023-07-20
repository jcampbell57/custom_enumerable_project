module Enumerable
  # Your code goes here

  def my_each_with_index
    if block_given?
      i = 0
      until i == length
        yield(self[i], i)
        i += 1
      end
    end
    self
  end

  def my_select
    if block_given?
      i = 0 
      new_array = []
      until i == length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      new_array
    end
  end

  def my_all?
    if block_given?
      i = 0 
      new_array = []
      until i == length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      if new_array.length == length
        true
      else
        false
      end
    end
  end

  def my_any?
    if block_given?
      i = 0 
      new_array = []
      until i == length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      if new_array.length > 0
        true
      else
        false
      end
    end
  end

  def my_none?
    if block_given?
      i = 0 
      new_array = []
      until i == length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      if new_array.empty?
        true
      else
        false
      end
    end
  end

  def my_count
    if block_given?
      i = 0 
      new_array = []
      until i == length
        if yield(self[i])
          new_array << self[i]
        end
        i += 1
      end
      new_array.length
    else
      length
    end
  end

  def my_map
    if block_given?
      i = 0 
      new_array = []
      until i == length
        new_array << yield(self[i])
        i += 1
      end
      new_array
    end
  end

  def my_inject(value)
    if block_given?
      i = 0
      new_value = value
      until i == length
        new_value = yield(self[i], new_value)
        i += 1
      end
      new_value
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    if block_given?
      i = 0
      until i == length
        yield(self[i])
        i += 1
      end
    end
    self
  end
end
