require 'test/unit'
require_relative '203_remove_linked_list_elements'
require_relative 'common/list'

class RemoveLinkedListElementsTest < Test::Unit::TestCase

  def test_remove
    list = List.initialize_from_list([1, 1, 2])
    new_head = remove_elements(list.head, 2)
    list = List.new(new_head)
    assert_equal('[1]->[1]', list.dump)
  end

end

