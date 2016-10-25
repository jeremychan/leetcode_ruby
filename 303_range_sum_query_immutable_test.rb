require 'test/unit'
require_relative '303_range_sum_query_immutable'

class RangeSumQueryImmutable < Test::Unit::TestCase

  def setup
    @num_array = NumArray.new([-2, 0, 3, -5, 2, -1])
  end

  def test_first
    assert_equal(-2, @num_array.sum_range(0, 0))
  end

  def test_zero
    assert_equal(-2, @num_array.sum_range(0, 1))
  end

  def test_simple1
    assert_equal(-4, @num_array.sum_range(0, 3))
  end

  def test_simple2
    assert_equal(1, @num_array.sum_range(0, 2))
  end

  def test_simple3
    assert_equal(-3, @num_array.sum_range(0, 5))
  end
end