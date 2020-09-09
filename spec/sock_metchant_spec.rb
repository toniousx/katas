require 'rspec'

socks_array = [1,2,3,1,1,2,2,3,3,2,1,1,1]

def pair_counter(socks_array)
	socks_array
end

describe 'Scock Merchant' do
  it 'has to be an array of integers representing the color(1,2,3..n) of each sock' do
    expect(socks_array).to all(be_an(Integer))
  end

  it 'counts pair colors/integers' do
		expect(pair_counter(socks_array)).to eq(6)
  end
end

