require 'test/unit'
require_relative '112_path_sum'
require_relative 'common/tree_node'

class PathSumTest < Test::Unit::TestCase

  def setup
    a = TreeNode.initialize_with_children(7, nil, nil)
    b = TreeNode.initialize_with_children(2, nil, nil)
    c = TreeNode.initialize_with_children(11, a, b)
    d = TreeNode.initialize_with_children(4, c, nil)
    e = TreeNode.initialize_with_children(1, nil, nil)
    f = TreeNode.initialize_with_children(4, nil, e)
    g = TreeNode.initialize_with_children(13, nil, nil)
    h = TreeNode.initialize_with_children(8, g, f)
    @root = TreeNode.initialize_with_children(5, d, h)
  end

  def test_true
    assert_true(has_path_sum(@root, 22))
      # assert_true(has_path_sum(@root, 25))
  end

  def test_false
    assert_false(has_path_sum(@root, 21))
  end
end
