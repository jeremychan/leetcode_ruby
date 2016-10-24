require 'test/unit'
require_relative '14_longest_common_prefix'

class LongestCommonPrefixTest < Test::Unit::TestCase

  def test_two
    assert_equal('abc', longest_common_prefix(%w(abc abcd)))
  end

  def test_three
    assert_equal('abc', longest_common_prefix(%w(abc abcd abcde)))
  end

  def test_multiple
    assert_equal('a', longest_common_prefix(%w(abdcde abc abcd adcde)))
  end

  def test_empty_string
    assert_equal('', longest_common_prefix(['abdcde', '']))
  end

  def test_empty_input
    assert_equal('', longest_common_prefix([]))
  end
end