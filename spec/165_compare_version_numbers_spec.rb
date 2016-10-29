require 'spec_helper'
require '165_compare_version_numbers'

describe 'CompareVersionNumbersSpec' do

  it 'can handle 1 level' do
    expect(compare_version('1', '1')).to eq (0)
    expect(compare_version('1', '2')).to eq (-1)
    expect(compare_version('2', '1')).to eq (1)
  end

  it 'can handle 2 levels' do
    expect(compare_version('1.0', '1.0')).to eq (0)
    expect(compare_version('1.1', '1.2')).to eq (-1)
    expect(compare_version('2.0', '1.9')).to eq (1)
    expect(compare_version('2.3', '2.2')).to eq (1)
  end

  it 'can handle 3 levels' do
    expect(compare_version('2.0.1', '2.0.0')).to eq (1)
    expect(compare_version('2.0.1', '2.0.0')).to eq (1)
  end

  it 'can handle mixed levels' do
    expect(compare_version('1', '1.1')).to eq (-1)
    expect(compare_version('1.1', '2.0.1')).to eq (-1)
  end

  it 'can handle leading 0' do
    expect(compare_version('01', '1')).to eq (0)
  end

  it 'can handle versions with 0' do
    expect(compare_version('1', '1.0')).to eq (0)
  end
end
