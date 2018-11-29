Node = Struct.new(:value, :next_node)

class LinkedList
  attr_reader :list
  def initialize nodes=[]
    @list = nodes
  end
  def random_value
    rand(10)
  end
  def append
    val = random_value
    node = Node.new(val, nil)
    @list << node
    n = @list.length
    if (n > 1)
      @list[n - 2].next_node = @list[n - 1]
    end
  end
  def prepend
    val = random_value
    node = Node.new(val, nil)
    @list.unshift(node)
    n = @list.length
    if (n > 1)
      @list[0].next_node = @list[1]
    end
  end
  def size
    @list.length
  end
  def head
    @list[0]
  end
  def tail
    @list[@list.size - 1]
  end
  def at index
    @list[index]
  end
  def pop
    @list.pop
    if @list.size >= 1
      @list[@list.size-1].next_node = nil
    end
  end
  def contains? value
    return false if (@list.size == 0)
    @list.each do |node|
      return true if node.value == value
    end
    false
  end
  def find data
    return nil if (@list.size == 0)
    @list.each_index do |index|
      return index if @list[index].value == data
    end
    nil
  end
  def to_s
    list_to_s = ""
    @list.each do |node|
      list_to_s << "( #{node.value} ) -> "
    end
    list_to_s << "nil"
  end
  def insert_at index
    val = random_value
    node = Node.new(val, nil)
    @list.insert(index, node)
    if index != 0
      @list[index - 1].next_node = @list[index]
    end
    if index != @list.size - 1
      @list[index].next_node = @list[index + 1]
    end
  end
  def remove_at index
    @list.delete_at(index)
    if index == @list.size - 1
      @list[index-1].next_node = nil
    end
    if index != 0
      list[index - 1].next_node = @list[index + 1]
    end
  end
end

# Example of a non-empty list
a = Node.new(5, nil)
b = Node.new(4, nil)
c = Node.new(10, nil)
a.next_node = b
b.next_node = c
l = []
l << a << b << c