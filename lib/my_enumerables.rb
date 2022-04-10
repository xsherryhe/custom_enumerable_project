module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0...self.size
      yield(self[i], i)
    end
    self
  end

  def my_select
    new_arr = []
    my_each { |elem| new_arr << elem if yield(elem) }
    new_arr
  end

  def my_all?
    my_each { |elem| return false unless yield(elem) }
    true
  end

  def my_any?
    my_each { |elem| return true if yield(elem) }
    false
  end

  def my_none?
    my_each { |elem| return false if yield(elem) }
    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in 0...self.size
      yield(self[i])
    end
    self
  end
end
