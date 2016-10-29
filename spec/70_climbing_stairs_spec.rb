require 'spec_helper'
require '70_climbing_stairs'

describe 'ClimbingStairsSpec' do

  it 'can handle base cases' do
    expect(climb_stairs(0)).to eq (1)
    expect(climb_stairs(1)).to eq (1)
  end

  it 'can handle more cases' do
    expect(climb_stairs(2)).to eq (2)
    expect(climb_stairs(3)).to eq (3)
  end

end
