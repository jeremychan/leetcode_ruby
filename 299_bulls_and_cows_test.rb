require 'test/unit'
require_relative '299_bulls_and_cows'

class BullsAndCowsTest < Test::Unit::TestCase

  def test_match
    assert_equal('4A0B', get_hint('1234', '1234'))
  end

  def test_bulls
    assert_equal('2A0B', get_hint('1234', '1536'))
  end

  def test_cows
    assert_equal('2A2B', get_hint('1234', '1432'))
  end

  def test_dups
    assert_equal('3A2B', get_hint('12341', '14321'))
  end

  def test_dups_cows
    assert_equal('1A1B', get_hint('1123', '0111'))
  end

  def test_dups_bulls
    assert_equal('1A0B', get_hint('11', '10'))
  end

end