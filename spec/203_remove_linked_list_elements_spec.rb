require 'spec_helper'
require '203_remove_linked_list_elements'
require 'common/list'

describe 'RemoveLinkedListElementsSpec' do

  it 'can remove' do
    list = List.initialize_from_list([1, 1, 2])
    new_head = remove_elements(list.head, 2)
    list = List.new(new_head)
    expect(list.dump).to eq ('[1]->[1]')
  end

end

