require 'test/unit'
require_relative '165_compare_version_numbers'

class CompareVersionNumbersTest < Test::Unit::TestCase

  def test_1level
    assert_equal(0, compare_version('1', '1'))
    assert_equal(-1, compare_version('1', '2'))
    assert_equal(1, compare_version('2', '1'))
  end

  def test_2levels
    assert_equal(0, compare_version('1.0', '1.0'))
    assert_equal(-1, compare_version('1.1', '1.2'))
    assert_equal(1, compare_version('2.0', '1.9'))
    assert_equal(1, compare_version('2.3', '2.2'))
  end

  def test_3levels
    assert_equal(1, compare_version('2.0.1', '2.0.0'))
    assert_equal(1, compare_version('2.1.1', '2.0.2'))
  end

  def test_mix_levels
    assert_equal(-1, compare_version('1', '1.1'))
    assert_equal(-1, compare_version('1.1', '2.0.1'))
  end

  def test_leading_0
    assert_equal(0, compare_version('01', '1'))
  end

  def test_version_with_0
    assert_equal(0, compare_version('1', '1.0'))
  end
end
