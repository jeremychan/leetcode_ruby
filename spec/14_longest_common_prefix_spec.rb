require 'spec_helper'
require '14_longest_common_prefix'

describe 'LongestCommonPrefixSpec' do

  it 'can handle two' do
    expect(longest_common_prefix(%w(abc abcd))).to eq ('abc')
  end

  it 'can handle three' do
    expect(longest_common_prefix(%w(abc abcd abcde))).to eq ('abc')
  end

  it 'can handle multiple' do
    expect(longest_common_prefix(%w(abdcde abc abcd adcde))).to eq ('a')
  end

  it 'can handle empty' do
    expect(longest_common_prefix(['abdcde', ''])).to eq ('')
  end

  it 'can handle empty input' do
    expect(longest_common_prefix([])).to eq ('')
  end

end