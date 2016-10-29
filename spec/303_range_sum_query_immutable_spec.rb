require 'spec_helper'
require '303_range_sum_query_immutable'

describe 'RangeSumQueryImmutableSpec' do

  before :each do
    @num_array = NumArray.new([-2, 0, 3, -5, 2, -1])
  end

  it 'can return first' do
    expect(@num_array.sum_range(0, 0)).to eq (-2)
  end

  it 'can return zero' do
    expect(@num_array.sum_range(0, 1)).to eq (-2)
  end

  it 'can return longer range' do
    expect(@num_array.sum_range(0, 3)).to eq (-4)
    expect(@num_array.sum_range(0, 2)).to eq (1)
  end

  it 'can return longer range with negative' do
    expect(@num_array.sum_range(0, 5)).to eq (-3)
  end

end