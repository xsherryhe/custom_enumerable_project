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

  def my_count(*val, &block)
    raise "Too many arguments" unless val.size < 2
    block = ->(elem){ elem == val[0] } unless val.empty?
    count = 0
    my_each { |elem| count += 1 if (block_given? ? block.call(elem) : true) }
    count
  end

  def my_map(proc = nil, &func)
    func = proc if proc.class == Proc
    raise "Missing Proc object or block argument" unless func && func.respond_to?(:call)
    new_arr = []
    my_each { |elem| new_arr << func.call(elem) }
    new_arr
  end

  def my_inject(*start)
    raise "Too many arguments" unless start.size < 2
    enum_arr = self.to_a
    acum, *inject_arr = start.empty? ? enum_arr : start + enum_arr
    inject_arr.my_each { |elem| acum = yield(acum, elem) }
    acum
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

def multiply_els(arr)
  arr.my_inject { |product, elem| product * elem }
end

puts multiply_els([2, 4, 5])
