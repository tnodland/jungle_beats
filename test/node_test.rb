require 'minitest/autorun'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("node")

    assert_instance_of Node, node
  end

  def test_it_has_attributes
    node = Node.new("node")

    assert_equal "node", node.data
    assert_nil node.next_node
  end
end
