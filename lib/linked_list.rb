require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    if @head
      node = @head
      loop do
        if node.next_node == nil
          break
        else
          node = node.next_node
        end
      end
      node.next_node = Node.new(sound)
    else
      @head = Node.new(sound)
    end
    sound
  end

  def prepend(sound)
    if @head
      node = @head
      @head = Node.new(sound)
      @head.next_node = node
    else
      @head = Node.new(sound)
    end
  end

  def insert(position, sound)
    node = Node.new(sound)
    node_count = 0
    count = @head
    while node_count != (position - 1)
      node_count += 1
      count = count.next_node
    end
    node.next_node = count.next_node
    count.next_node = node
  end

  def count
    count = 0
    end_node = @head
    while !end_node.nil?
      count += 1
      end_node = end_node.next_node
    end

    return count
  end

  def includes?(sound)
    node = @head
    while !node.nil?
      return true if node.data == sound
      node = node.next_node
    end
    return false
  end

  def pop
    node = @head
    if node.next_node.nil?
      @head = nil
    else
      while node.next_node.next_node
        node = node.next_node
      end
    end
    node.next_node = nil
  end

  def to_string
    string = ""
    end_node = @head
    while !end_node.nil?

      string += end_node.data
      if !end_node.next_node.nil?
        string += " "
      end

      end_node = end_node.next_node
    end
    string
  end
end
