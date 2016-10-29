require 'spec_helper'
require '299_bulls_and_cows'

describe 'BullsAndCowsSpec' do

  it 'can match all' do
    expect(get_hint('1234', '1234')).to eq ('4A0B')
  end

  it 'can match bulls' do
    expect(get_hint('1234', '1536')).to eq ('2A0B')
  end

  it 'can match cows' do
    expect(get_hint('1234', '1432')).to eq ('2A2B')
  end

  it 'can match with dups' do
    expect(get_hint('12341', '14321')).to eq ('3A2B')
  end

  it 'can match with dup cows' do
    expect(get_hint('1123', '0111')).to eq ('1A1B')
  end

  it 'can match with dup bulls' do
    expect(get_hint('11', '10')).to eq ('1A0B')
  end

end