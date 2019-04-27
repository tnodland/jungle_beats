require 'minitest/autorun'
require 'pry'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test
  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_has_attributes
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append_node
    list = LinkedList.new
    node = "node"

    list.append(node)

    assert_equal node, list.head.data
  end

  def test_it_can_prepend_node
    list = LinkedList.new

    list.append("node")
    list.append("node2")

    assert_equal "node node2", list.to_string

    list.prepend("node3")

    assert_equal "node3 node node2", list.to_string
  end

  def test_it_can_count
    list = LinkedList.new

    list.append("node")

    assert_equal 1, list.count

    list.append("node")

    assert_equal 2, list.count
  end

  def test_it_can_to_string
    list = LinkedList.new

    list.append("node")
    list.append("node2")

    assert_equal "node node2", list.to_string
  end

  def test_it_can_insert_a_node
    list = LinkedList.new
    list.append("node")
    list.append("node2")
    list.insert(1, "node1.5")
    assert_equal "node node1.5 node2", list.to_string
  end

  def test_it_can_find_a_specific_string
    list = LinkedList.new
    list.append("node")

    assert_equal true, list.includes?("node")
    assert_equal false, list.includes?("node2")
  end

  def test_ot_can_pop_a_node
    list = LinkedList.new
    list.append("node")
    list.append("node2")
    list.append("node3")

    list.pop
    assert_equal 2, list.count
    assert_equal "node node2", list.to_string

    list.pop
    assert_equal 1, list.count
    assert_equal "node", list.to_string
  end
end
