class Queue
  def initialize
    @store = []
  end

  def enqueue(element)
    return @store.push(element)
  end

  def dequeue
    # return @store.delete(@store[0])
    return @store.shift
  end

  def front
    return @store.first
  end

  def size
    return @store.length
  end

  def empty?
    return @store.length == 0
  end

  def to_s
    return @store.to_s
  end
end

# a = Queue.new
# a.enqueue(3)
# a.enqueue(5)
# a.enqueue(9)
# print a
# a.dequeue
# print a
