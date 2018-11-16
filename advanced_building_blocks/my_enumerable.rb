module Enumerable
  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i = i + 1
    end
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield i
      i = i + 1
    end
  end

  def my_select
    item = []
    i = 0
    while i < self.length
      if yield self[i]
        item.push(self[i])
      end
      i = i + 1
    end
    item
  end

  def my_all?
    i = 0
    while i < self.length
      if not yield self[i]
        return false
      end
      i = i + 1
    end
    true
  end

  def my_any?
    i = 0
    while i < self.length
      if yield self[i]
        return true
      end
      i = i + 1
    end
    false
  end

  def my_none?
    i = 0
    while i < self.length
      if yield self[i]
        return false
      end
      i = i + 1
    end
    true
  end

  def my_count
    i = 0
    count = 0
    while i < self.length
      if block_given?
        if yield self[i]
          count = count + 1
        end
      else
        count = count + 1
      end
      i = i + 1
    end
    count
  end

  def my_map (p = nil)
    item = []
    i = 0
    while i < self.length
      if not block_given?
        result = p.call
        item.push(result)
      else
        result = yield self[i]
        item.push(result)
      end
      i = i + 1
    end
    item
  end

  def my_inject (initial = 0)
    i = 0
    accumulator = initial
    while (i < self.length)
      accumulator = yield(accumulator, self[i])
      i = i + 1
    end
    accumulator
  end

  def multiply_els
    self.my_inject(1) { |total, n| total * n }
  end

end