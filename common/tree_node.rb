# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end

  def self.initialize_with_children(val, left, right)
    x = self.new(val)
    x.left = left
    x.right = right
    x
  end
end