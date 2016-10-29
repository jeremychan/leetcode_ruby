class NumArray

  # Initialize your data structure here.
  # @param {Integer[]} nums
  def initialize(nums)
    @nums = nums
    @cache = Hash.new(0)
    (0...nums.length).each { |j|
      @cache[j] = @cache[j-1] + nums[j]
    }
  end

  # @param {Integer} i
  # @param {Integer} j
  # @return {Integer}
  def sum_range(i, j)
    @cache[j] - @cache[i-1]
  end
end

# Your NumArray object will be instantiated and called as such:
# num_array = NumArray.new(nums)
# num_array.sum_range(0, 1)
# num_array.sum_range(0, 2)