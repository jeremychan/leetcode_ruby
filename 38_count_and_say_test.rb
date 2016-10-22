require 'test/unit'
require_relative '38_count_and_say'

class CountAndSayTest < Test::Unit::TestCase

  def test_count
    assert_equal("1", count_and_say(1))
    assert_equal("11", count_and_say(2))
    assert_equal("21", count_and_say(3))
    assert_equal("1211", count_and_say(4))
    assert_equal("111221", count_and_say(5))
    assert_equal("312211", count_and_say(6))
  end

end

