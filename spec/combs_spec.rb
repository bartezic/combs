require_relative '../lib/combs'

describe Combs do
  let(:dictionary) {['a', 'b', 'c', 'ab', 'abc']}

  it 'find combinations for aabc' do
    expect(Combs.find_combinations(dictionary, 'aabc')).to match_array(['a abc', 'a a b c', 'a ab c'])
  end

  it 'find combinations for aabcx' do
    expect(Combs.find_combinations(dictionary, 'aabcx')).to eq([])
  end
end