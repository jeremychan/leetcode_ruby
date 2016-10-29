require 'spec_helper'
require '7_reverse_integer'

describe 'ReverseIntegerSpec' do

  it 'can reverse positive number' do
    expect(reverse(321)).to eq(123)
  end

  it 'can reverse negative number' do
    expect(reverse(-123)).to eq(-321)
  end

end
