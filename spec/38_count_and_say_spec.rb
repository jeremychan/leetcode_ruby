require 'spec_helper'
require '38_count_and_say'

describe 'CountAndSaySpec' do

  it 'can count' do
    expect(count_and_say(1)).to eq ('1')
    expect(count_and_say(2)).to eq ('11')
    expect(count_and_say(3)).to eq ('21')
    expect(count_and_say(4)).to eq ('1211')
    expect(count_and_say(5)).to eq ('111221')
    expect(count_and_say(6)).to eq ('312211')
  end

end

