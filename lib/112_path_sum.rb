require_relative 'common/tree_node'

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if root == nil

  return true if sum == root.val && root.left == nil && root.right == nil
  return true if has_path_sum(root.left, sum-root.val) || has_path_sum(root.right, sum-root.val)

  false
end