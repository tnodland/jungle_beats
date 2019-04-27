class Node
  attr_reader :data
  attr_accessor :next_node
  
  def initialize(sound)
    @data = sound
    @next_node = nil
  end
end
