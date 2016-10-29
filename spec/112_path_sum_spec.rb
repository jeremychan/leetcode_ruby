require 'spec_helper'
require '112_path_sum'
require 'common/tree_node'

describe 'PathSumSpec' do

  before :each do
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

  it 'can return true when find sum' do
    expect(has_path_sum(@root, 22)).to eq true
  end

  it 'can return false when cannot find sum' do
    expect(has_path_sum(@root, 21)).to eq false
  end

end
