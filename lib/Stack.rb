class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store.push(element)
    #@store.unshift(element)
  end

  def pop
    return @store.pop
    # last_element = @store.last
    # @store.delete(last_element)
    # return @store
  end

  def top
    return @store.last
  end

  def size
    return @store.length
  end

  def empty?
    return @store.length == 0
    # return size == 0
    # return @store.empty
  end

  def to_s
    return @store.to_s
  end
end


# a = Stack.new
# a.push(3)
# a.push(5)
# a.push(9)
# print a
# a.pop
# print a
