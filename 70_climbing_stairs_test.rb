require 'test/unit'
require_relative '70_climbing_stairs'

class ClimbingStairsTest < Test::Unit::TestCase

  def test_base_case
    assert_equal(1, climb_stairs(0))
    assert_equal(1, climb_stairs(1))
  end

  def test_more_cases
    assert_equal(2, climb_stairs(2))
    assert_equal(3, climb_stairs(3))
  end

end
