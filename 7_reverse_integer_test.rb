require 'test/unit'
require_relative '7_reverse_integer'

class ReverseIntegerTest < Test::Unit::TestCase

  def test_reverse
    assert_equal(123, reverse(321))
    assert_equal(-123, reverse(-321))
  end

end
